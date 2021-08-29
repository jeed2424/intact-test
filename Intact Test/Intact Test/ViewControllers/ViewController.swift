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
            let prodVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "productVC") as! ProductVC
            self.navigationController?.pushViewController(prodVC, animated: true)
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        wishListCollect.delegate = self;
        wishListCollect.dataSource = self;
        wishListCollect.register(UINib(nibName: "WishListCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell");

        
            }
    
    func updateUI(currentProduct: CurrentProduct) {
        WishListCollectionViewCell().lblName.text = currentProduct.title
        WishListCollectionViewCell().lblPrice.text = currentProduct.priceString
        WishListCollectionViewCell().lblShortDes.text = currentProduct.shortDes
        
    }

//    func numberOfSections(in wishListCollect: UICollectionView) -> Int {
//            return 1;
//        }
//    func collectionView(_ wishListCollect: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return networkManager.wishListProducts.count
//        }
//    func collectionView(_ wishListCollect: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let row = networkManager.wishListProducts[indexPath.row];
//        let cell = wishListCollect.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WishListCollectionViewCell;
//        networkManager.fetchData { Products in
//            DispatchQueue.main.async { [weak self] in
//                guard let self = self else { return }
//                self.updateUI(currentProduct: Products)
//
//       }
//        }
//        return cell;
//    }
//    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize {
//            let cellWidth = collectionView.frame.size.width
//            return CGSize(width: cellWidth, height: cellWidth*0.8)
//        }
}

extension ViewController {
   
    func setupCollectionView(){
//        tableViewPost.backgroundColor = .clear
//        tableViewPost.delegate = self
//        tableViewPost.dataSource = self
//        tableViewPost.separatorStyle  = .none
//        TimeLineCell.registerWithNib(to: tableViewPost)
    }
    func setupView(){
        setupCollectionView()
    }
}

//MARK: - CollectionView delegate
extension ViewController: UICollectionViewDelegate{
    func numberOfSections(in wishListCollect: UICollectionView) -> Int {
                return 1;
    }
   
}
//MARK: - CollectionView DataSource
extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return networkManager.Products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! WishListCollectionViewCell;
        let product = networkManager.Products[indexPath.row]
            cell.cellConfigure(product: product)
            return cell
//        } else {
//            return UICollectionViewCell()
//        }
    }
 
}

