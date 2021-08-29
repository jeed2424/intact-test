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
        id = productCall.products.first!.id
        title = productCall.products.first!.title
        brand = productCall.products.first!.brand
        shortDes = productCall.products.first!.shortDescription
        desLong = productCall.products.first!.productDescription
        image = productCall.products.first!.image
        price = productCall.products.first!.price
        colorCode = (productCall.products.first!.colors?.first!.code)!
        colorName = (productCall.products.first!.colors?.first!.name)!
        sizeH = productCall.products.first!.size.h
        sizeW = productCall.products.first!.size.w
        sizeD = productCall.products.first!.size.d
    }
    
}
