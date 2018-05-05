//
//  DishView.swift
//  FoodWorld
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class DishView: UIView {
    
    var typeDish: UILabel?
    var imageDish: UIImageView?
    var descDish: UILabel?

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(dish: Dish) {
        typeDish = UILabel(frame: CGRect(x: 20, y: 0, width: frame.width - 40, height: 50))
        typeDish?.text = converterTypeDish(type: dish.type)
        typeDish?.textAlignment = .left
        typeDish?.font = FONT_BASE
        typeDish?.textColor = GRAY_LIGTH
        guard typeDish != nil else { return }
        addSubview(typeDish!)
        var maxY = typeDish!.frame.maxY
        
        imageDish = UIImageView(frame: CGRect(x: 0, y: maxY, width: frame.width, height: 200))
        imageDish?.image = dish.image
        imageDish?.contentMode = .scaleAspectFill
        imageDish?.clipsToBounds = true
        guard imageDish != nil else { return }
        addSubview(imageDish!)
        maxY = imageDish!.frame.maxY
        
        descDish = UILabel(frame: CGRect(x: 20, y: maxY, width: frame.width - 40, height: 100))
        descDish?.numberOfLines = 0
        descDish?.text = dish.desc
        descDish?.font = FONT_BASE
        descDish?.textColor = GRAY_LIGTH
        descDish?.textAlignment = .center
        guard descDish != nil else { return }
        addSubview(descDish!)
        
        
        
    }
    
    func converterTypeDish(type: Type) -> String {
        switch type {
        case .entree: return "Entrée"
        case .mainCourse: return "Plat Principale"
        case .dessert: return "Dessert"
        }
    }

}
