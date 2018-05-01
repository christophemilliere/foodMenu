//
//  TheDishs.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import Foundation
import UIKit

class TheDishs {
    
    static let getDishs = TheDishs()
    
    func menus() -> [Menu]{
        var menus = [Menu]()
        let it = Menu(country: ITALIA, image: #imageLiteral(resourceName: "pizza"))
        let jp = Menu(country: JAPAN, image: #imageLiteral(resourceName: "sushis"))
        let  chi = Menu(country: CHINA, image: #imageLiteral(resourceName: "crevette aigre doux"))
        let usa = Menu(country: USA, image: #imageLiteral(resourceName: "burger"))
        let mx = Menu(country: MEXICO, image: #imageLiteral(resourceName: "fajitas"))
        let es = Menu(country: ESPANIA, image: #imageLiteral(resourceName: "paella"))
        let sui = Menu(country: SWISS, image: #imageLiteral(resourceName: "fondue"))
        menus.append(contentsOf: [it, jp, chi, usa, mx, es, sui])
        
        return menus
    }
}
