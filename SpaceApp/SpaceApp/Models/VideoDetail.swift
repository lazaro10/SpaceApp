//
//  VideoDetail.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

struct VideoDetail: Codable {
    
    enum Category: String, Codable, CustomStringConvertible {
        
        case appFrameworks
        
        var description: String {
            
            return "App Frameworks"
        }
    }
    
    let title: String
    let description: String
    let sessionNumber: Int
    let publishPeriod: String
    let categories: [Category]
}
