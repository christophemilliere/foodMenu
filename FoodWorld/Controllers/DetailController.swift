//
//  DetailController.swift
//  FoodWorld
//
//  Created by christophe milliere on 05/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var detailScrollView: UIScrollView!
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.addSublayer(Gradient())
        view.bringSubview(toFront: detailScrollView)
        guard menu != nil  else { return }
        setup(menu: menu!)
        
    }
    
    func setup(menu: Menu) {
        let imageMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageMenu.image = menu.image
        imageMenu.contentMode = .scaleAspectFill
        imageMenu.clipsToBounds = true
        detailScrollView.addSubview(imageMenu)
        var maxY = imageMenu.frame.maxY
        
        let nameMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nameMenu.text = "Menu \(menu.country)"
        nameMenu.font = FONT_TITLE
        nameMenu.textColor = .red
        nameMenu.adjustsFontSizeToFitWidth = true
        nameMenu.textAlignment = .center
        detailScrollView.addSubview(nameMenu)
        maxY = nameMenu.frame.maxY
        
        for dish in menu.dishs {
            let viewDish = DishView(frame: CGRect(x: 0, y: maxY, width: view.frame.width , height: 375))
            viewDish.setup(dish: dish)
            detailScrollView.addSubview(viewDish)
            maxY = viewDish.frame.maxY
        }
        
        detailScrollView.contentSize = CGSize(width: view.frame.width, height: maxY + 50)
    }
    
}
