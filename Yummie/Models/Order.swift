//
//  Order.swift
//  Yummie
//
//  Created by Vivek on 16/09/22.
//

import Foundation


struct Order : Decodable {
    
    let id : String?
    let name : String?
    let dish : Dish?
    
}
