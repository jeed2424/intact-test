//
//  CurrentProduct.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation

struct CurrentProduct {
    
    let id: Int
    var idString: String {
        return "\(id)"
    }
    
    let title: String 
                
    let brand: String
    
    let shortDes: String
    
    let desLong: String
    
    let image: String
    
    let price: Double
    var priceString: String {
        return "\(price)"
    }
    
    let colorCode: String
    
    let colorName: String
    
    let sizeH: String
    
    let sizeW: String
    
    let sizeD: String
    

    
    
    init?(productCall: ProductCall){
        id = productCall.products["Products"]!.id
        title = productCall.products["Products"]!.title
        brand = productCall.products["Products"]!.brand
        shortDes = productCall.products["Products"]!.shortDescription
        desLong = productCall.products["Products"]!.productDescription
        image = productCall.products["Products"]!.image
        price = productCall.products["Products"]!.price
        colorCode = (productCall.products["Products"]!.colors?.first!.code)!
        colorName = (productCall.products["Products"]!.colors?.first!.name)!
        sizeH = productCall.products["Products"]!.size.h
        sizeW = productCall.products["Products"]!.size.w
        sizeD = productCall.products["Products"]!.size.d
    }
    
}
