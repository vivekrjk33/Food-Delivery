//
//  ListOrderViewController.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import UIKit

class ListOrderViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
 
    var order : [Order] = [
    
        .init(id: "Id1", name: "vivek", dish: .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22)),
        .init(id: "Id1", name: "Ravi", dish: .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22)),
        .init(id: "Id1", name: "Mukesh", dish: .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22)),
        .init(id: "Id1", name: "Roshan", dish: .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22)),
        .init(id: "Id1", name: "Rocky", dish: .init(id: "ID1", name: "Indian", image: "https://i.picsum.photos/id/742/100/200.jpg?hmac=OukJlOVVVKA9hm3Ocjjfc20dDcGTyQo-HvWP1s-5H14", description: "tasty food", calories: 344.22))
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

       title = "Order"
       registerCells()
    }

    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
    

}

extension ListOrderViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier, for: indexPath) as! DishListTableViewCell
        cell.setUp(order: order[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = order[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
    
    
}
