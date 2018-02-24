//
//  NewsService.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

struct NewsService {
    
    func fetchNews(completion: @escaping ((ServiceResponse<News>) -> ())) {
        
        guard let jsonURL = R.file.newsJson() else {
            
            completion(.error(.fetchError))
            return
        }
        
        do {
            
            let json = try Data(contentsOf: jsonURL)
            let news = try JSONDecoder().decode(News.self, from: json)
            
            DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
                completion(.success(news))
            })
        } catch {
            
            completion(.error(.unknown(error)))
        }
    }
}

