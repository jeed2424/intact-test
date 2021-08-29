import Foundation

struct Product : Decodable {
    let id: Int
    var idString: String {
        return "\(id)"
    }
    
    let title: String
                
    let brand: String
    
    let short_description: String
    
    let description: String
    
    let image: String
    
    let price: Double
    var priceString: String {
        return "\(price)"
    }
    
  //  let colorCode: String
    
    var colors: [Color]?
    
    let sizeH: String
    
    let sizeW: String
    
    let sizeD: String
    

    
    
//    init?(product: Product){
//        id = product.id
//        title = product.title
//        brand = product.brand
//        shortDes = product.shortDes
//        desLong = product.desLong
//        image = product.image
//        price = product.price
////        colorCode = product.colorCode
////        colorName = product.colorName
//        sizeH = product.sizeH
//        sizeW = product.sizeW
//        sizeD = product.sizeD
//    }
}
