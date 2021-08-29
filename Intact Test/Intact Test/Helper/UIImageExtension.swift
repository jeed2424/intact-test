//
//  UIImageExtension.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-29.
//

import Foundation
import SDWebImage

extension UIImageView {
    func loadImage(url photoUrl: URL?, placeholder imageName: String = "", contentMode: UIView.ContentMode = .scaleAspectFill ) {
        guard let url = photoUrl else {
            self.image = UIImage.init(named: imageName)!
            self.contentMode = contentMode
            return
        }
        
        self.sd_setImage(with: url, placeholderImage: UIImage(named: imageName), options: .continueInBackground) { (image, error, type, url) in
            self.contentMode = contentMode
        }
    }
    
    func loadImage(string urlString: String?, placeholder imageName: String = "PostCellImage", contentMode: UIView.ContentMode = .scaleAspectFill ) {
        guard let urlString = urlString?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: urlString) else {
            loadImage(url: nil, placeholder: imageName, contentMode: contentMode)
            return
        }
        
        loadImage(url: url, placeholder: imageName, contentMode: contentMode)
    }
}
