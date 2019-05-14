//
//  AppDelegate.swift
//  MovieFilterListDemo
//
//  Created by Steve JobsOne on 5/14/19.
//  Copyright © 2019 MobioApp Limited. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addChild(childController: UIViewController, to view: UIView) {
        self.addChild(childController)
        childController.view.frame = view.bounds
        view.addSubview(childController.view)
        childController.didMove(toParent: self)
    }
    
}
