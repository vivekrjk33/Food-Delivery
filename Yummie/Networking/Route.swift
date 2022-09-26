//
//  Route.swift
//  Yummie
//
//  Created by Vivek on 21/09/22.
//

import Foundation

enum Route {
    
    // https://yummie.glitch.me/orders/
    static let baseUrl = "https://yummie.glitch.me"
    
    case fetchAllCategories
    case placeOrder(String)
    case fetchCategoryDishes(String)
    case fetchOrder
    
    var description : String {
        
        switch self {
        case .fetchAllCategories:
            return "/dish-categories"
        case .placeOrder(let dishId) :
            return "/orders/\(dishId)"
        case .fetchCategoryDishes(let categoryId):
            return "/dishes/\(categoryId)"
        case.fetchOrder :
            return "/orders"
        }

    }
    
}
