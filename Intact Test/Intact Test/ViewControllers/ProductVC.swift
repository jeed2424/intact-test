//
//  ProductVC.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-27.
//

import Foundation
import UIKit

class ProductVC: UIViewController {
    
    var networkManager = Network()
    
// MARK: - Outlets
    
    @IBOutlet weak var lblProdName: UILabel!
    @IBOutlet weak var prodImg: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblH: UILabel!
    @IBOutlet weak var lblW: UILabel!
    @IBOutlet weak var lblD: UILabel!
    @IBOutlet weak var outletBtnWishList: UIButton!
    
// MARK: - Actions
    
    @IBAction func btnWishList(_ sender: Any) {
        print("Hello")
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let mainVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainVC") as! ViewController
        self.navigationController?.pushViewController(mainVC, animated: false)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.networkManager.fetchData { Products in
//            DispatchQueue.main.async { [weak self] in
//                guard let self = self else { return }
//                self.updateUI()
//            }
//        }
    }
    
    func updateUI() {
        
    }


}
