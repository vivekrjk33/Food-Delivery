//
//  DishLandscapeCollectionViewCell.swift
//  Yummie
//
//  Created by Vivek on 15/09/22.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {

     static let identfier = "DishLandscapeCollectionViewCell"
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    
    
    func setUp(_ special : Dish) {
        
        dishImage.kf.setImage(with: special.image?.asURL)
        titleLbl.text = special.name
        descriptionLbl.text = special.description
        caloriesLbl.text = special.formateCalorie
    }
    
}
