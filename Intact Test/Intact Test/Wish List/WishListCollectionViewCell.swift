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
    func cellConfigure(product: Product){

    }
}
