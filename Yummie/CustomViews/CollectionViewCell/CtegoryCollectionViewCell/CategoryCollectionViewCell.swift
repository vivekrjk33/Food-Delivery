//
//  CategoryCollectionViewCell.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var categoryTitleLbl: UILabel!
    @IBOutlet weak var categoryImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUp(_ category : DishCategory) {
        
        categoryTitleLbl.text = category.name
        categoryImageView.kf.setImage(with: category.image.asURL)
        
    }

}
