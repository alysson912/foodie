//
//  StockProfileService.swift
//  Foodie
//
//  Created by Alysson Menezes on 02/02/24.
//

import Foundation
import FirebaseFirestoreInternal
//import FirebaseAuth

protocol StockProfileServiceDelegate: GenericService {
    func createNewColection(completion: @escaping completion<SheetModel?>)
}

class StockProfileService: StockProfileServiceDelegate {
    
    let db = Firestore.firestore()
    var firestore: Firestore?
    
    func createNewColection(completion: @escaping (SheetModel?, Error?) -> Void)  {
        do {
            let ref = try  db.collection("Produtos").addDocument(data: [
    
                "first": "Alex",
                   "middle": "Mathison",
                   "last": "Turing",
                   "born": 1912,
                "Country": "Brasil"
          ])
          print("Document added with ID: \(ref.documentID)")
        } catch {
            completion(nil, Error.fileNoFound(name: "SheetModel"))
        }
    }
    

    
    
    
    
  
    
   
}
