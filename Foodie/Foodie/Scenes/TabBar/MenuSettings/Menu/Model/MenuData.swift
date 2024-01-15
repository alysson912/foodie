// Menu.swift

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let menu = try? newJSONDecoder().decode(Menu.self, from: jsonData)

import Foundation

// MARK: - Menu
struct MenuData: Codable {
    var totalValue: Double?
    var menuTitleCellList: [MenuTitleCellList]?
}


// MARK: - MenuTitleCellList
struct MenuTitleCellList: Codable {
    var titleMenuLabel, iconImage, arrowIconimage, backGroundImage: String?
}


