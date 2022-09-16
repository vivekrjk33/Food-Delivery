//
//  DishListTableViewCell.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import UIKit

class DishListTableViewCell: UITableViewCell {

    static let identifier = "DishListTableViewCell"
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    func setUp(_ dish : Dish) {
        
        dishImageView.kf.setImage(with: dish.image?.asURL )
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        
    }
    
    
    func setUp(order : Order) {
        dishImageView.kf.setImage(with: order.dish?.image?.asURL )
        titleLbl.text = order.dish?.name
        descriptionLbl.text = order.dish?.description
        
    }
    
}
