//
//  HomeViewController.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit
import CoreMIDI
import ProgressHUD
class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularDishCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories : [DishCategory] = []
    
    
    var popular : [Dish] = []
    
    
    var special : [Dish] = []
       
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor.black
        registerCell()
        ProgressHUD.show()
        NetworkingServices.shared.fetchAllCategories { result in
            
            switch result {
            case .success(let allDishes):
                print("Successdfgdfgdsd")
                ProgressHUD.dismiss()
                self.categories = allDishes.categories ?? []
                self.popular = allDishes.populars ?? []
                self.special = allDishes.specials ?? []
                
                DispatchQueue.main.async {
                    
                    self.categoryCollectionView.reloadData()
                    self.popularDishCollectionView.reloadData()
                    self.specialCollectionView.reloadData()
                }
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
                print("errorrr")
            }
        }
        
    }
    
    private func registerCell() {
        

        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identity, bundle: nil ), forCellWithReuseIdentifier: CategoryCollectionViewCell.identity)
        
        popularDishCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identify, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identify)
        
        specialCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identfier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identfier)
        
    }
    
}


extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
            
        case categoryCollectionView:
            return categories.count
        case popularDishCollectionView:
            return popular.count
        case specialCollectionView:
            return special.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identity, for: indexPath) as! CategoryCollectionViewCell
            cell.setUp(categories[indexPath.row])
            return cell
        case popularDishCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identify, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setUp(popular[indexPath.row])
            
            return cell
            
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identfier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setUp(special[indexPath.row])
            return cell
        default:
            
            return UICollectionViewCell()
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == categoryCollectionView {
            
            let controller = DishListViewController.instantiate()
            controller.category = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
        
        else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularDishCollectionView ? popular[indexPath.row] : special[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
            
        }
    }
    
    
    
    
}
