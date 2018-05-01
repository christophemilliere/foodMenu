//
//  Dish.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class Dish {
    private var _type: Type
    private var _country: String
    private var _desc: String
    private var _image: UIImage
    
    var type: Type{
        return _type
    }
    
    var country: String {
        return _country
    }
    
    var desc: String {
        return _desc
    }
    
    var image: UIImage {
        return _image
    }
    
    init(type: Type, country: String, desc: String, image: UIImage) {
        self._type = type
        self._country = country
        self._desc = desc
        self._image = image
    }
}
