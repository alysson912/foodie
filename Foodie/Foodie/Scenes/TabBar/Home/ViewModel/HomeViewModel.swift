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
    
    public func sizeForItemAt(indexPath: IndexPath, frame: CGRect) -> CGSize {
        
        switch indexPath.item {
        case 0:
            return CGSize(width: frame.width, height: 200)
        case 1:
            return CGSize(width: frame.width, height: 45)
        case 2:
            return CGSize(width: frame.width, height: 340)
        default:
            return CGSize(width: frame.width, height: 550)
        }
    }
    
    public var numberOfRowsInSection: Int {
        return 5
    }
    
    public var heightForRowAt: CGFloat {
        return 250
    }
}
