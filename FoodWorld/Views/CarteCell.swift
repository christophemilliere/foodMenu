//
//  CarteCell.swift
//  FoodWorld
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CarteCell: UITableViewCell {
    

    @IBOutlet weak var descCarte: UILabel!
    @IBOutlet weak var imageCarte: UIImageView!
    
    var dish: Dish
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(dish: Dish) {
        self.dish = dish
        imageCarte.image = self.dish.image
        imageCarte.contentMode = .scaleAspectFill
        imageCarte.clipsToBounds = true
        imageCarte.layer.cornerRadius = 20
        
        descCarte.text = self.dish.desc
        descCarte.textAlignment = .center
        descCarte.numberOfLines = 0
        descCarte.textColor = GRAY_LIGTH
        descCarte.font = FONT_BASE
        
    }
}
