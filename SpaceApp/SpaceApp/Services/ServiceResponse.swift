//
//  ServiceResponse.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

enum ServiceError: Error {
    
    case fetchError
    case unknown(Error)
    
    var localizedDescription: String {
        switch self {
        case .fetchError:
            return "Ocorreu um erro"
        case .unknown(_):
            return "Ocorreu um erro desconhecido"
        }
    }
}

enum ServiceResponse<T> {
    
    case success(T)
    case error(ServiceError)
}
