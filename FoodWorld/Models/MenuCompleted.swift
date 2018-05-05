//
//  MenuCompleted.swift
//  FoodWorld
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class MenuCompleted {
    private var _type: Type
    private var _dishs: [Dish]
    
    var type: Type {
        return _type
    }
    
    var dishs: [Dish] {
        return _dishs
    }
    
    init(type: Type) {
        self._type = type
        self._dishs = [Dish]()
    }
}
