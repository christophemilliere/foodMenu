//
//  MenuCell.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var nameMenu: UILabel!
    @IBOutlet weak var MenuImage: UIImageView!
    
    var menu: Menu!
    
    func setup(menu: Menu){
        self.menu = menu
        view.layer.cornerRadius = 10
        view.layer.borderColor = BLACK.cgColor
        view.layer.borderWidth = 1
        
        MenuImage.image = self.menu.image
        MenuImage.contentMode = .scaleAspectFill
        MenuImage.clipsToBounds = true
        MenuImage.layer.cornerRadius = MenuImage.frame.width / 2
        MenuImage.layer.borderWidth = 2
        MenuImage.layer.borderColor = GRAY_LIGTH.cgColor
        
        nameMenu.text = "Menu \(self.menu.country)"
        nameMenu.textColor = GRAY_BLACK
        nameMenu.font = FONT_BASE
        nameMenu.adjustsFontSizeToFitWidth = true
        nameMenu.textAlignment = .center
        
    }
}
