//
//  HomeViewModel.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//

import UIKit

protocol HomeViewModelDelegate: AnyObject {
    func sucess()
    func error()
}

class HomeViewModel {
    
    let screen = HomeScreen()
 
    
//    public func loadCurrentFilterNft(indexPath: IndexPath) -> HomeModel {
//        return dataImage[indexPath.row]
//    }
    
  
    
    public var numberOfRowsInSection: Int {
        return 5
    }
    
    public var heightForRowAt: CGFloat {
        return 250
    }
}
