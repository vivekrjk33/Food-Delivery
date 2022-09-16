//
//  DishListViewController.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import UIKit

class DishListViewController: UIViewController {

    var dish : DishCategory!
    
    @IBOutlet weak var tableView: UITableView!
    
    var dishes : [Dish] = [
    
        .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22),

        .init(id: "ID2", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 3454.22),
        .init(id: "ID3", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 3484.22),
        .init(id: "ID4", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 32.22),
        .init(id: "ID5", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 34.22)
    
    
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = dish.name
        registerCells()
    }
    

    private func registerCells() {
        
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    
}


extension DishListViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        
        cell.setUp(dishes[indexPath.row])
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
    
}
