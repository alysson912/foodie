//
//  GenericService.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 31/07/23.
//

import Foundation

enum Error: Swift.Error {
    case fileNoFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
    
}

    enum TypeFetch {
        case mock
        case createNewCollection(data: SheetModel) // adicionei esse parametro para poder acessar os dados 
    }

protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
    
}
