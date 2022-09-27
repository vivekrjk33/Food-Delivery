//
//  UserDefault+Extension.swift
//  Yummie
//
//  Created by Vivek on 27/09/22.
//

import Foundation
import SwiftUI

extension UserDefaults {
    
    private enum userDefaultsKeys  : String {
        case hasOnBoard
    }
    
    var hasOnBoard : Bool {
        
        get{
            bool(forKey: userDefaultsKeys.hasOnBoard.rawValue)
        }
        set {
            
            setValue(newValue, forKey: userDefaultsKeys.hasOnBoard.rawValue)
        }
        
    }
    
 
}
