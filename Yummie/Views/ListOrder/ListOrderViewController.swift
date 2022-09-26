//
//  ListOrderViewController.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import UIKit
import ProgressHUD

class ListOrderViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
 
    var order : [Order] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

       title = "Order"
       registerCells()
        ProgressHUD.show()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        NetworkingServices.shared.fetchOrder { [weak self]result in
            switch result {
                
                
            case .success(let orders):
                ProgressHUD.dismiss()
                self?.order = orders
                self?.tableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
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
