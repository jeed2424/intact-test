//
//  ViewController.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-26.
//

import UIKit

class ViewController: UIViewController {
    
    var networkManager = NetworkService()
    
    
    @IBOutlet weak var prodCatalogCollect: UICollectionView!
    
    
    @IBOutlet weak var wishListCollect: UICollectionView!
    
    
    @IBOutlet weak var totalPrice: UILabel!
    
    @IBOutlet weak var lblSubTotal: UILabel!
    
    
    @IBAction func btnCheckOut(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let vc = storyboard.instantiateViewController(withIdentifier: "productVC") as? ProductVC {
//            self.present(vc, animated:true, completion:nil)
            let prodVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "productVC") as! ProductVC
            self.navigationController?.pushViewController(prodVC, animated: true)
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.networkManager.fetchData { Products in
            DispatchQueue.main.async { [weak self] in
                guard let self = self else { return }
                self.updateUI()
            }
        }
    }
    
    func updateUI() {
        
    }


}

