//
//  SheetViewModel.swift
//  Foodie
//
//  Created by Alysson Menezes on 02/02/24.
//

import UIKit

protocol SheetViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class SheetViewModel: NSObject {

private let service = StockProfileService()
    private var data: SheetModel?
    private weak var delegate: SheetViewModelDelegate?
    
    public func fetch(_ typeFetch: TypeFetch){
        
        switch typeFetch {
        case.createCollection:
            self.service.createNewColection { success, error in
                if let success {
                    self.data = success
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
        }
            
        case .mock:
            return
        }
    }
}
