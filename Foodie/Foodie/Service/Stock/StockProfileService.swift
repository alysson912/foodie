//
//  StockProfileService.swift
//  Foodie
//
//  Created by Alysson Menezes on 02/02/24.
//

import Foundation
import FirebaseFirestoreInternal
import FirebaseAuth

protocol StockProfileServiceDelegate: GenericService {
    func createNewColection(completion: @escaping completion<SheetModel?>)
}

class StockProfileService: StockProfileServiceDelegate {
    
    let db = Firestore.firestore()
    var firestore: Firestore?
    
    func createNewColection(completion: @escaping (SheetModel?, Error?) -> Void)  {
        do {
            let ref = try  db.collection("Teste").addDocument(data: [
                
                "name" : "Amburger",//data.name ?? "",
                "description" : "Hoper Completo" ,//data.description ?? "",
                "price" : "20" //String(data.price ?? 0.0),
                //"image" : data.image ?? ""
          ])
          print("Document added with ID: \(ref.documentID)")
        } catch {
            completion(nil, Error.fileNoFound(name: "SheetModel"))
        
        }
    }
    

    
    
    
    
  
    
   
}
