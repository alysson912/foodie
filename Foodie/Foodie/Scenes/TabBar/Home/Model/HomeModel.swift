//
//  HomeModel.swift
//  Foodie
//
//  Created by Alysson Menezes on 28/12/23.
//


import Foundation

// MARK: - HomeData
struct HomeDataModel: Codable {
    var totalValue: Double?
    var listProducts: [ListProduct]?
}

// MARK: - ListProduct
struct ListProduct: Codable {
    
    var id, image, title, brand: String?
    var model, description, price: String?
    var productImage: [String]?
}
