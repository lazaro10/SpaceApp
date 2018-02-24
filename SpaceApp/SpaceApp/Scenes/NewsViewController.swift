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
    
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var descriptionView: UIView!
    @IBOutlet weak var actionsView: UIView!
    @IBOutlet weak var relatedVideosView: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        NewsConfigurator.configure(viewController: self)
        
        output?.fetchNews(request: NewsModel.FetchNews.Request())
    }
    
    func displayNews(viewModel: NewsModel.FetchNews.ViewModel) {
        
        
    }
    
    func displayError(error: NewsModel.FetchNews.Error.ViewModel) {
        
    }
}
