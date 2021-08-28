//
//  ProductModel.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation

// MARK: - Welcome
struct ProductCall: Codable {
    let products: [Products]
    let colors: [Colors]
    let size: Size
}

// MARK: - Main
struct Products: Codable {
    let title, brand, shortDescription, description, image: String
   // let colors: Array<Any>
    let price: Float
    let id: Int

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case brand
        case shortDescription = "short_description"
        case description
        case image
        case price
        //case size
       // case colors
        

    }
}

// MARK: - Colors
struct Colors: Codable {
    let code, name: String
    
    enum CodingKeys: String, CodingKey {
        case code
        case name
    }
}

// MARK: - Size
struct Size: Codable {
    let H, W, D: String
    
    enum CodingKeys: String, CodingKey {
        case H
        case W
        case D
    }
}
