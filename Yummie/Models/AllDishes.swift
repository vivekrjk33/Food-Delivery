//
//  Alldishes.swift
//  Yummie
//
//  Created by Vivek on 22/09/22.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
