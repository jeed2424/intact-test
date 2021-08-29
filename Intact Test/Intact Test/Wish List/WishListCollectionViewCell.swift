//
//  WishListCollectionViewCell.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-28.
//

import UIKit

class WishListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var uiViewCell: UIView!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblShortDes: UILabel!
    @IBOutlet weak var imgColor1: UIView!
    @IBOutlet weak var imgColor2: UIView!
    @IBOutlet weak var imgProdItem: UIImageView!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

extension WishListCollectionViewCell {
  func configure(_ product: Product?) {
    if let product = product {
    if let url = URL(string: product.image) {
      imgProdItem.loadImage(url: url)
    }


    lblPrice.text = "\(product.price)"
    lblName.text = product.title
    lblShortDes.text = product.short_description
    imgColor1.backgroundColor = UIColor(named: product.colors[0].name)
    imgColor2.backgroundColor = UIColor(named: product.colors[1].name)
    }
  }
}
