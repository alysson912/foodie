//
//  MenuProfileService.swift
//  MenuProfile
//
//  Created by ALYSSON DODO on 31/07/23.
//

import UIKit
//import Alamofire

protocol MenuProfileServiceDelegate: GenericService {
    func getMenuFromJson(completion: @escaping completion <MenuProfileGroup?>)
  //  func getMenu(completion: @escaping completion <MenuProfileGroup?>)
}

class MenuProfileService: MenuProfileServiceDelegate {
    
//    func getMenu(completion: @escaping completion <MenuProfileGroup?>){
//        let url: String = "https://run.mocky.io/v3/bd7b02f0-73d3-4e8f-a0e3-fd3e402c75a6"
//        
//        AF.request(url, method: .get).validate().responseDecodable ( of: MenuProfileGroup.self){ response in
//            print(#function)
//            debugPrint(response)
//            switch response.result {
//            case .success(let success):
//                print("success -> \(#function)")
//                completion(success, nil)
//                
//            case .failure(let error):
//                print("error  -> \(#function)")
//                completion(nil, Error.errorRequest(error))
//            }
//        }
//        
//    }
    
    func getMenuFromJson(completion: @escaping completion<MenuProfileGroup?>) {
        if let url = Bundle.main.url(forResource: "menuProfile", withExtension: "json"){
            
            do {
                let data = try Data(contentsOf: url)
                let menu: MenuProfileGroup = try JSONDecoder().decode(MenuProfileGroup.self, from: data)
                completion(menu, nil)
            } catch  {
                completion(nil, Error.fileDecodingFailed(name: "menuProfile", error))
            }
        }
    }
}
