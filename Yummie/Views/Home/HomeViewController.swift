//
//  HomeViewController.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit
import CoreMIDI

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularDishCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var categories : [DishCategory] = [
    
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "American", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "France", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "China", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Britain", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Russia", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Thailand", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Dubai", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Pakistan", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Newzland", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14")
    ]
    
    
    var popular : [Dish] = [
    

            .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22),
    
            .init(id: "ID2", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 3454.22),
            .init(id: "ID3", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 3484.22),
            .init(id: "ID4", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 32.22),
            .init(id: "ID5", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 34.22)
    ]
    
    
    var special : [Dish] = [
        .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22),

        .init(id: "ID2", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty foodfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcnfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcnfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcnfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcnfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcnfdjnvfbhffjnghvfgkjfhdngnjnvghmsjgvhsvgchmc,hgmvcghj,mcngjhmfgvjnchcjhg,,cnnsg,amcmfnsjh,gmcskmh,cmgshm,csjhckjchkcn", calories: 3454.22),
        .init(id: "ID3", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 3484.22),
        .init(id: "ID4", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 32.22),
        .init(id: "ID5", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 34.22)
    
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
        
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
            controller.dish = categories[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
        }
        
        else {
            let controller = DishDetailViewController.instantiate()
            controller.dish = collectionView == popularDishCollectionView ? popular[indexPath.row] : special[indexPath.row]
            navigationController?.pushViewController(controller, animated: true)
            
        }
    }
    
    
    
    
}
