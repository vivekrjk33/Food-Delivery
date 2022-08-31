//
//  CardView.swift
//  Yummie
//
//  Created by Vivek on 31/08/22.
//

import Foundation
import UIKit

class CardView : UIView {
    
    override init(frame: CGRect){
        super.init(frame: frame)
        initialSetUp()
    }
    
     required init?(coder: NSCoder) {
         super.init(coder: coder)
         initialSetUp()
        
    }
    private func initialSetUp()
    {
        layer.shadowColor = UIColor.black.cgColor
        layer.cornerRadius = 10
        layer.shadowOffset = .zero
        layer.shadowOpacity = 0.1
        cornerRadius = 10
        
    }
}
