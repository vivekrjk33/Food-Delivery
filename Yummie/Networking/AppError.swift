//
//  AppError.swift
//  Yummie
//
//  Created by Vivek on 21/09/22.
//

import Foundation



enum AppError : LocalizedError {
    
    case errorDecoding
    case unknownError
    case invalidURl
    case serverError(String)
    
    var errorDescription : String {
        
        switch self {
            
            
        case .errorDecoding:
            return "Responce Could not be decoded"
        case .unknownError:
            return "I have no idea what go on"
        case .invalidURl:
            return "give  a valid url"
        case .serverError(let error):
            return error
        }
    }
    
}
