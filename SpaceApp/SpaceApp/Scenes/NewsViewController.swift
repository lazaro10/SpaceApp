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
  weak var videoViewController: VideoViewController?
  weak var descriptionViewController: DescriptionViewController?
  weak var actionsViewController: ActionsViewController?
  weak var relatedVideosViewController: RelatedVideosViewController?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    NewsConfigurator.configure(viewController: self)
    output?.fetchNews(request: NewsModel.FetchNews.Request())
  }
  
  func displayNews(viewModel: NewsModel.FetchNews.ViewModel) {
  
  }
  
  func displayError(error: NewsModel.FetchNews.Error.ViewModel) {
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    switch segue.destination {
    case let videoViewController as VideoViewController:
      self.videoViewController = videoViewController
    case let descriptionViewController as DescriptionViewController:
      self.descriptionViewController = descriptionViewController
    case let actionsViewController as ActionsViewController:
      self.actionsViewController = actionsViewController
    case let relatedVideosViewController as RelatedVideosViewController:
      self.relatedVideosViewController = relatedVideosViewController
    default:
      break
    }
  }
}
