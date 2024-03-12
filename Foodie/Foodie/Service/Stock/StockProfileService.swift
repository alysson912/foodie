//
//  StockProfileService.swift
//  Foodie
//
//  Created by Alysson Menezes on 02/02/24.
//

import Foundation
import UIKit
import FirebaseFirestoreInternal

protocol StockProfileServiceDelegate: GenericService {
    // adicionei data: SheetModel para acessar os atributos da SheetModel
    func createNewColection(data: SheetModel, completion: @escaping completion<SheetModel?>)
}

class StockProfileService: StockProfileServiceDelegate {
    let db = Firestore.firestore()
    var firestore: Firestore?
    
<<<<<<< HEAD
    func createNewColection(completion: @escaping (SheetModel?, Error?) -> Void)  {
        
        let category = "Sanduiche"
        let dataSheet: SheetModel = SheetModel(name: "MacLanche", description: "Descrição do produto", price: 23.90 )
        do {
            let ref = try  db.collection(category).addDocument(data: [
    
                "name": dataSheet.name ?? "",
                "description": dataSheet.description ?? "",
                "price": dataSheet.price ?? 0.0,
          ])
          print("Document added with ID: \(ref.documentID)")
=======
    
    func createNewColection( data: SheetModel ,completion: @escaping completion<SheetModel?>) {
        // pegando objeto e transformando em dicionario
        func toDictionary() -> [String: Any] {
                return [
                    "name": data.name,
                    "description": data.description,
                    "price": data.price ]
            }
  
        do {
            let ref = try db.collection("Produtos").addDocument(data: toDictionary())
            
            print("Document added with ID: \(ref.documentID)")
           // print("Document added with ID: \(toDictionary().values)")
>>>>>>> feat/backp-CadastroProdutoFirebase
        } catch {
            completion(nil, Error.fileNoFound(name: "SheetModel"))
        }
    }
}





