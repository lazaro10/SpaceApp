//
//  Injectable.swift
//  SpaceApp
//
//  Created by Lázaro Lima dos Santos on 24/02/18.
//  Copyright © 2018 LAH. All rights reserved.
//

import Foundation

protocol Injectable {
    associatedtype T
    func inject(_: T)
    func assertDependencies()
}
