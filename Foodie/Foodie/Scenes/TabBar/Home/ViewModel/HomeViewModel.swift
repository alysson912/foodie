//
//  HomeViewModel.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

class HomeViewModel {
    
    
    private var dataImage: [HomeModel] = [
        
        HomeModel(image: "k1"),
        HomeModel(image: "l2"),
        HomeModel(image: "gsl"),
    ]
    
    public func loadCurrentFilterNft(indexPath: IndexPath) -> HomeModel {
        return dataImage[indexPath.row]
    }
    
    public var numberOfRowsInSection: Int {
        return 5
    }
}
