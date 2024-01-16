//
//  HomeService.swift
//  punchLoudness
//
//  Created by Alysson on 29/08/23.
//

import UIKit

protocol HomeServiceDelegate: GenericService {
    func getHomeFromJson(completion: completion<MenuData?>)
}

class HomeService {
    func getHomeFromJson(completion: (MenuData?, Error?) -> Void) {
        if let url = Bundle.main.url(forResource: "HomeDataMock", withExtension: "json"){ // buscando o local do data
            
            do {
                 let data = try Data(contentsOf: url) // passando a rota do json, transforma o json em binario para depois trasformar em um objeto
                let homeData: MenuData = try JSONDecoder().decode(MenuData.self, from: data)
                completion(homeData, nil)
                
            } catch  {
                completion(nil, Error.fileDecodingFailed(name: "HomeData", error))
            }
        } else {
            completion(nil, Error.fileNoFound(name: "HomeData"))
        }
    }
}
