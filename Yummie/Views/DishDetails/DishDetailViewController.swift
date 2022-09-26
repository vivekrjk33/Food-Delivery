//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Vivek on 15/09/22.
//

import UIKit
import ProgressHUD
class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var nameTxtField: UITextField!
    @IBOutlet weak var orderBtn: UIButton!
    
    var dish : Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        populateView()
       
    }

    
    private func populateView() {
        dishImageView.kf.setImage(with: dish.image?.asURL)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formateCalorie
    }

    @IBAction func clickPlaceOrderBtn(_ sender: Any) {
        
        guard let name = nameTxtField.text?.trimmingCharacters(in: .whitespaces),
              !name.isEmpty else {
                  ProgressHUD.showError("Please enter name")
                  return
              }
        ProgressHUD.show("Placing order")
        NetworkingServices.shared.placeOrder(dishId: dish.id ?? "", name: name) { result in
            switch result
            {
         
            case .success(_):
                ProgressHUD.showSucceed("Place Order has been recived 👨‍🍳")
            case .failure(let error):
                ProgressHUD.showError(error.localizedDescription)
            }
        }
         
        print("Name \(name)")
    }
}
