//
//  Action.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

struct Action: Codable {
    
    enum ActionId: String, Codable {
        
        case markAsWatched
        case downloadVideo
        case leaveFeedback
    }
    
    let id: ActionId
    let title: String
}
