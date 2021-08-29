//
//  Network.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation

class Network : NSObject {
  func getProducts(_ completion: @escaping ([Product]?)-> Void) {
    if let url = URL(string: "https://drive.google.com/uc?export=download&id=180NdUCDsmJgCSAfwaJIoWOVSVdvqyNu2") {
      URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
          print(error.localizedDescription)
          completion(nil)
        } else {
          if let data = data {
            do {
                let model = try JSONDecoder().decode(Model.self, from: data)
              completion(model.products)
            } catch {
              print(error.localizedDescription)
              completion(nil)
            }
          }
        }
      }.resume()
    }
}

}
