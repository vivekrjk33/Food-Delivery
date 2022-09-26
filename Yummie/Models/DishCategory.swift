//
//  DishCategory.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import Foundation

struct DishCategory: Decodable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
