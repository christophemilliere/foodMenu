//
//  Gradient.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class Gradient: CAGradientLayer {
    override init(layer: Any) {
        super.init(layer: layer)
        setup()
    }
    
    override init() {
        super.init()
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup(){
        frame = UIScreen.main.bounds
        colors = [BLACK.cgColor, GRAY_BLACK.cgColor]
        startPoint = CGPoint(x: 0, y: 0)
        endPoint = CGPoint(x: 1, y: 1)
        locations = [0, 1]
    }
}
