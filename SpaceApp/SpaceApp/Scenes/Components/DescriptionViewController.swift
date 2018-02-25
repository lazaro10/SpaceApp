//
//  DescriptionViewController.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet weak var descriptionLabel: UILabel!
    var teste: String? {
        didSet {
            descriptionLabel.text = teste
        }
    }
}
