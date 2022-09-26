//
//  DishListViewController.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import UIKit
import ProgressHUD

class DishListViewController: UIViewController {

    var category : DishCategory!
    
    @IBOutlet weak var tableView: UITableView!
    
    var dishes : [Dish] = [ ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = category.name
        registerCells()
        
        ProgressHUD.show()
        NetworkingServices.shared.fetchCategoriesDishes(categoryId: category.id ?? "") { result in
            switch result {
                
            case .success(let dishes):
                ProgressHUD.dismiss()
                self.dishes = dishes
                self.tableView.reloadData()
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
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
