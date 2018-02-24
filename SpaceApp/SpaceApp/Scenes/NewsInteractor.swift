//
//  NewsInteractor.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

protocol NewsInteractorOutput {
    func presentNews(response: NewsModel.FetchNews.Response)
    func presentError(error: ServiceError)
}

struct NewsInteractor {
    private let service: NewsService
    private let output: NewsInteractorOutput
    
    init(service: NewsService, output: NewsInteractorOutput) {
        self.service = service
        self.output = output
    }
    
    func fetchNews(request: NewsModel.FetchNews.Request) {
        service.fetchNews { (response) in
            switch response {
            case let .success(news):
                let reponse = NewsModel.FetchNews.Response(news: news)
                self.output.presentNews(response: reponse)
            case let .error(error):
                self.output.presentError(error: error)
            }
        }
    }
}
