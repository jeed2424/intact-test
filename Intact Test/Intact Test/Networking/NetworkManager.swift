//
//  NetworkManager.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation
import UIKit


class NetworkService {
    
    //Get data from API
    func fetchData(completionHandler: @escaping (CurrentProduct)-> Void) {
          
         let urlString = "https://drive.google.com/uc?export=download&id=180NdUCDsmJgCSAfwaJIoWOVSVdvqyNu2"
          guard let url = URL(string: urlString) else { return }

          URLSession.shared.dataTask(with: url) { (data, response, error) in

              if let error = error {
                  print( "Error getting URL:", error)
              }

              guard let data = data else { return }

              do {
                  let json = try JSONDecoder().decode(ProductCall.self, from: data)
                guard let currentProduct = CurrentProduct(productCall: json) else { return }
                  completionHandler(currentProduct)
  //              self.delegate?.updateInterface(self, currentWeather: currentWeather)
              } catch let error as NSError {
                  print(error)
              }

          }.resume()
        
          
      }
         

}

extension UIImageView {
    
    //SetUp Product Image
    func getImage(img: UIImageView, icon: String, currentProduct: CurrentProduct){
        guard let url = URL(string: icon) else {
            print("Error getting Image")
            return
        }
           DispatchQueue.global().async {
               // Fetch Image Data
               if let data = try? Data(contentsOf: url) {
                   DispatchQueue.main.async {
                       // Create Image and Update Image View
                       img.image = UIImage(data: data)
                   }
               } else {
                return
               }
           }
    }
}

