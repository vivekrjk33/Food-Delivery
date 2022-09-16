//
//  DishPortraitCollectionViewCell.swift
//  Yummie
//
//  Created by Vivek on 15/09/22.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identify = "DishPortraitCollectionViewCell"
   
    @IBOutlet weak var tiltleLbl: UILabel!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    
    func setUp( _ dish : Dish ) {
        
        tiltleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formateCalorie
        dishImage.kf.setImage(with: dish.image?.asURL)
        
        
    }
    
}
