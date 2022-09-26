//
//  Dish.swift
//  Yummie
//
//  Created by Vivek on 15/09/22.
//

import Foundation


struct Dish : Decodable{
    
    let id, name, image, description : String?
    let calories : Double?
    
    
    var formateCalorie : String {
        
        return String(format: "%.2f Calories", calories ?? 0)
    }
    
}
