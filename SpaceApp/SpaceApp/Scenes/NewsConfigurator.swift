//
//  NewsConfigurator.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

extension NewsViewController: NewsPresenterOutput { }
extension NewsInteractor: NewsViewControllerOutput { }
extension NewsPresenter: NewsInteractorOutput { }

struct NewsConfigurator {
    
    private init() { }
    
    static func configure(viewController: NewsViewController) {
        
        let service = NewsService()
        
        let presenter = NewsPresenter(output: viewController)
        let interactor = NewsInteractor(service: service, output: presenter)
        viewController.output = interactor
    }
}
