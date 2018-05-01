//
//  CustomNavigationController.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.barTintColor = BLACK
        navigationBar.tintColor = GRAY_LIGTH
        navigationBar.titleTextAttributes = [.font: FONT_BASE as Any, .foregroundColor: GRAY_LIGTH ]
    }
}
