//
//  ProductModel.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation

// MARK: - Welcome
struct ProductCall: Codable {
    let products: [String: Product]
    }

    // MARK: - Product
    struct Product: Codable {
        let id: Int
        let title, brand, shortDescription, productDescription: String
        let price: Double
        let image: String
        let colors: [Color]?
        let size: Size
        let quantity: Int

        enum CodingKeys: String, CodingKey {
            case id, title, brand
            case shortDescription = "short_description"
            case productDescription = "description"
            case price, image, colors, size, quantity
        }
    }

    // MARK: - Color
    struct Color: Codable {
        let code, name: String
    }

    // MARK: - Size
    struct Size: Codable {
        let h, w, d: String

        enum CodingKeys: String, CodingKey {
            case h = "H"
            case w = "W"
            case d = "D"
        }
    }
