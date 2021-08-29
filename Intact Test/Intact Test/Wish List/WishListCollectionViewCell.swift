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
    func cellConfigure(product: CurrentProduct){
        let string = product.image
//        if let data = try? Data(contentsOf: URL(string: string)!) {
//            imgPost.image = UIImage(data: data)!.resized(to: CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width))
//        }
        imgProdItem.loadImage(url: URL(string: string))
        lblPrice.text = product.priceString
        lblName.text = product.title
        lblShortDes.text = product.shortDes
        imgColor1.backgroundColor = UIColor(named: product.colorName)
        imgColor2.backgroundColor = UIColor(named: product.colorName)

    }
}
