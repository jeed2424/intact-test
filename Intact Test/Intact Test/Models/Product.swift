import Foundation

struct Product : Decodable {
  var id: Int

  var title: String
  var brand: String
  var short_description: String
  var description: String

  var price: Double

  var image: String

  var colors: [Color]

  var size: Size

  var quantity: Int
    
    enum CodingKeys: String, CodingKey {
        case id, quantity
        case title, brand
        case short_description = "short_description"
        case description = "description"
        case price, image
        case colors
        case size
}
}
