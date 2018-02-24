//
//  News.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

struct News: Codable {
    
    let videoURL: URL
    let detail: VideoDetail
    let actions: [Action]
    let relatedVideos: [RelatedVideo]
}
