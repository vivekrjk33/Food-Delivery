//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Vivek on 15/09/22.
//

import UIKit

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
        
    }
}
