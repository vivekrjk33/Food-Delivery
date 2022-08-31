//
//  UIView+Extension.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import Foundation
import UIKit

extension UIView {

    @IBInspectable var cornerRadius : CGFloat {
        get{return cornerRadius}
        set {
            self.layer.cornerRadius = newValue
           }
    }

}
