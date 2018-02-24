//
//  NewsPresenter.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

protocol NewsPresenterOutput: class {
    func displayNews(viewModel: NewsModel.FetchNews.ViewModel)
    func displayError(error: NewsModel.FetchNews.Error.ViewModel)
}

struct NewsPresenter {
    
    private weak var output: NewsPresenterOutput?
    
    init(output: NewsPresenterOutput) {
        self.output = output
    }
    
    func presentNews(response: NewsModel.FetchNews.Response) {
        
        let viewModel = NewsModel.FetchNews.ViewModel(
            videoUrl: response.news.videoURL,
            title: response.news.detail.title,
            periodDescription: response.news.detail.publishPeriod,
            session: "Session \(response.news.detail.sessionNumber)",
            tagDescriptions: response.news.detail.categories.map {
                $0.description
                }.joined(separator: ", "),
            newsDescription: response.news.detail.description,
            actionTitles: response.news.actions.map {
                $0.title
            },
            relatedVideos: response.news.relatedVideos.map {
                NewsModel.FetchNews.ViewModel.RelatedVideo(
                    title: $0.title,
                    imageUrl: $0.imageURL
                )
            }
        )
        output?.displayNews(viewModel: viewModel)
    }
    
    func presentError(error: ServiceError) {
        
        output?.displayError(
            error: NewsModel.FetchNews.Error.ViewModel(
                description: error.localizedDescription
            )
        )
    }
}

