//
//  ViewController.swift
//  Intact Test
//
//  Created by Jay Beaudoin on 2021-08-26.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
  var products: [Product]?

  @IBOutlet weak var prodCatalogCollect: UICollectionView!
  @IBOutlet weak var wishListCollect: UICollectionView!

  @IBOutlet weak var totalPrice: UILabel!
  @IBOutlet weak var lblSubTotal: UILabel!

  @IBAction func btnCheckOut(_ sender: Any) {
    let prodVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "productVC") as! ProductVC
    navigationController?.pushViewController(prodVC, animated: true)
  }


  override func viewDidLoad() {
    super.viewDidLoad()
    wishListCollect.delegate = self
    wishListCollect.dataSource = self
    wishListCollect.register(UINib(nibName: "WishListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")


    Network().getProducts { products in
      self.products = products
        print(products?.count)

      DispatchQueue.main.async {
        self.wishListCollect.reloadData()
      }
    }
  }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection: Int) -> Int {
    return products?.count ?? 0 // This may be wrong, I'm using Atom to work on it.
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! WishListCollectionViewCell
    cell.configure(products?[indexPath.item])
    return cell
  }
}
