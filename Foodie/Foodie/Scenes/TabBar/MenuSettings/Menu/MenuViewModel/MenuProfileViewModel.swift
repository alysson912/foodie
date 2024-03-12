//
//  MenuProfileViewModel.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 31/07/23.
//

import UIKit



protocol MenuProfileViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class MenuProfileViewModel {
    
    private let service = MenuProfileService()
    private weak var delegate: MenuProfileViewModelDelegate?
    private var data: MenuData?
    
    
    public func delegate(delegate: MenuProfileViewModelDelegate?){
        self.delegate = delegate
    }
    
    public func fetch(_ typeFetch: TypeFetch){
        switch typeFetch {
        case .mock:
            self.service.getMenuFromJson { success, error in
                if let success {
                    self.data = success
                    self.delegate?.success()
                    
                }else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .createNewCollection:
            return
        }
    }
    
    public var numberOfSections: Int {
        return data?.menuTitleCellList?.count ?? 0
    }
 
    public func loadCurrenDatat(indexPath: IndexPath) -> MenuTitleCellList {
        return data?.menuTitleCellList?[indexPath.row] ?? MenuTitleCellList()
    }
 
    public var heightForRowAt: CGFloat {
        return 125
    }

}
 
