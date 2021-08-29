import Foundation

struct Color : Decodable {
  var code: String
  var name: String
    
    enum CodingKeys: String, CodingKey {
        case code, name
}
}
