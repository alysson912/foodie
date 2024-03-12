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

class SheetViewModel: NSObject { // assinar protocolo colo
    private let service = StockProfileService()
    private var data: SheetModel?
    private weak var delegate: SheetViewModelDelegate?
    
    
    public func fetch(_ typeFetch: TypeFetch){
    
        switch typeFetch {
        case.createNewCollection(let newData):
            self.service.createNewColection(data: newData) { success, error in // nao sei o q pasar aqui kk
                
                if let success {
                    self.data = newData // dados para levar para service
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
        }
            
        case .mock:
            return
        }
    }
}


    
    
    

