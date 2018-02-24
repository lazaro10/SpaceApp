//
//  NewsModels.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

struct NewsModel {
    
    struct FetchNews {
        
        struct Request {
            
        }
        
        struct Response {
            let news: News
            
        }
        
        struct ViewModel {
            let videoUrl: URL
            let title: String
            let periodDescription: String
            let session: String
            let tagDescriptions: String
            let newsDescription: String
            let actionTitles: [String]
            let relatedVideos: [RelatedVideo]
            
            struct RelatedVideo {
                let title: String
                let imageUrl: URL
            }
        }
        
        struct Error {
            struct ViewModel {
                let description: String
            }
        }
    }
}
