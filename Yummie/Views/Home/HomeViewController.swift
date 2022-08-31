//
//  HomeViewController.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories : [DishCategory] = [
    
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14"),
        .init(id: "Id1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerCell()
        
    }
    
    private func registerCell() {
        
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identity, bundle: nil ), forCellWithReuseIdentifier: CategoryCollectionViewCell.identity)
    }
    
}


extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identity, for: indexPath) as! CategoryCollectionViewCell
        cell.setUp(categories[indexPath.row])
        return cell
    }
    
    
    
    
    
}
