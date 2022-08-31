//
//  OnboardingCollectionViewCell.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var slideImageView: UIImageView!
    
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    @IBOutlet weak var slideTitleLvbl: UILabel!
    
    func setUp(_ slide : OnboardingSlide) {
        
        slideTitleLvbl.text = slide.title
        slideDescriptionLbl.text = slide.description
        slideImageView.image = slide.image
    }
}
