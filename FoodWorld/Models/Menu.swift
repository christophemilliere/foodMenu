//
//  Menu.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class Menu {
    private var _country: String
    private var _image: UIImage
    private var _dishs: [Dish]
    
    var country: String {
        return _country
    }
    
    var image: UIImage {
        return _image
    }
    
    var dishs: [Dish] {
        return _dishs
    }
    
    init(country: String, image: UIImage) {
        self._country = country
        self._image = image
        self._dishs = TheDishs.getDishs.addAllDish(country: self._country)
    }
}
