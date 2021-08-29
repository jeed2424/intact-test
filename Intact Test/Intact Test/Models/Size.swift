import Foundation

struct Size : Decodable {
  var H: String
  var W: String
  var D: String
    
    enum CodingKeys: String, CodingKey {
        case H
        case W
        case D
}
}
