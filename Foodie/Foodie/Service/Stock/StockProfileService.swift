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
        
        let category = "Sanduiche"
        let dataSheet: SheetModel = SheetModel(name: "MacLanche", description: "Descrição do produto", price: 23.90 )
        do {
            let ref = try  db.collection(category).addDocument(data: [
    
                "name": dataSheet.name ?? "",
                "description": dataSheet.description ?? "",
                "price": dataSheet.price ?? 0.0,
          ])
          print("Document added with ID: \(ref.documentID)")
        } catch {
            completion(nil, Error.fileNoFound(name: "SheetModel"))
        }
    }
    

    
    
    
    
  
    
   
}
