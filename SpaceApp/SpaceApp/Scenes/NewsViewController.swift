//
//  NewsViewController.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import UIKit
import Rswift

protocol NewsViewControllerOutput {
    
    func fetchNews(request: NewsModel.FetchNews.Request)
}

class NewsViewController: UIViewController {
    
    var output: NewsViewControllerOutput?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NewsConfigurator.configure(viewController: self)
        output?.fetchNews(request: NewsModel.FetchNews.Request())
    }
    
    func displayNews(viewModel: NewsModel.FetchNews.ViewModel) {
        injectDescriptionContainer(bla: viewModel.newsDescription)
    }
    
    func displayError(error: NewsModel.FetchNews.Error.ViewModel) {
        
    }
    
    private func injectDescriptionContainer(bla: String) {
        let descriptionContainer: DescriptionViewController = R.storyboard.main().instantiateInitialViewController() as! DescriptionViewController
        
        descriptionContainer.teste = bla
    }
}
