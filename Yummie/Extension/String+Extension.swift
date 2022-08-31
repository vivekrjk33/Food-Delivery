//
//  String+Extension.swift
//  Yummie
//
//  Created by Vivek on 30/08/22.
//

import Foundation

extension String {
    
    var asURL : URL? {
        return URL(string: self)
    }
}
