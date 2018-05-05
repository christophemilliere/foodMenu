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
    
    func menuCompleted() -> [MenuCompleted] {
        let entree = MenuCompleted(type: .entree)
        let mainCourse = MenuCompleted(type: .mainCourse)
        let dessert = MenuCompleted(type: .dessert)
        
        return [entree, mainCourse, dessert]
    }
    
    func aLaCarte(type: Type) -> [Dish] {
        var dishs = [Dish]()
        for dish in allDishs() {
            if dish.type == type {
                dishs.append(dish)
            }
        }
        return dishs
    }
    
    func addAllDish(country: String) -> [Dish]{
        var dishs = [Dish]()
        for dish in allDishs() {
            if dish.country == country {
                dishs.append(dish)
            }
        }
        return dishs
    }
    
    func allDishs() -> [Dish] {
        var allDishs = [Dish]()
        
        let tomate = Dish(type: .entree, country: ITALIA, desc: "Salade de tomates et Mozzarella", image: #imageLiteral(resourceName: "mozza"))
        allDishs.append(tomate)
        let pizza = Dish(type: .mainCourse, country: ITALIA, desc: "Pizza Royale (jambon, fromage et champignons)", image: #imageLiteral(resourceName: "pizza"))
        allDishs.append(pizza)
        let tiramisu = Dish(type: .dessert, country: ITALIA, desc: "Le fameux Tiramisu au café, un régal pour les papilles", image: #imageLiteral(resourceName: "tiramisu"))
        allDishs.append(tiramisu)
        
        let nuggets = Dish(type: .entree, country: USA, desc: "Nuggets de poulet", image: #imageLiteral(resourceName: "nuggets"))
        allDishs.append(nuggets)
        let burg = Dish(type: .mainCourse, country: USA, desc: "Cheeseburger avec viande 100% charolaise", image: #imageLiteral(resourceName: "burger"))
        allDishs.append(burg)
        let sundae = Dish(type: .dessert, country: USA, desc: "Sundae nappage chocolat et éclat de noix de pécan", image: #imageLiteral(resourceName: "sundae"))
        allDishs.append(sundae)
        
        let nems = Dish(type: .entree, country: CHINA, desc: "4 nems frits au poulet", image: #imageLiteral(resourceName: "nem"))
        allDishs.append(nems)
        let crevette = Dish(type: .mainCourse, country: CHINA, desc: "Crevettes sauce aigre douce, servie ave du riz cantonais", image: #imageLiteral(resourceName: "crevette aigre doux"))
        allDishs.append(crevette)
        let litchi = Dish(type: .dessert, country: CHINA, desc: "Cheesecake au litchi et citron yuzu", image: #imageLiteral(resourceName: "cheesecake citon litchi"))
        allDishs.append(litchi)
        
        let gaz = Dish(type: .entree, country: ESPANIA, desc: "Gazpacho: la soupe froide qui vient d'Andalousie", image: #imageLiteral(resourceName: "gazpacho"))
        allDishs.append(gaz)
        let paellas = Dish(type: .mainCourse, country: ESPANIA, desc: "La véritable paêlla valencianne", image: #imageLiteral(resourceName: "paella"))
        allDishs.append(paellas)
        let churro = Dish(type: .dessert, country: ESPANIA, desc: "Churros et crème de framboise", image: #imageLiteral(resourceName: "Churros et creme de framboise"))
        allDishs.append(churro)
        
        let sushi = Dish(type: .entree, country: JAPAN, desc: "Disheau de sushis variés (8 pièces)", image: #imageLiteral(resourceName: "sushis"))
        allDishs.append(sushi)
        let boeuf = Dish(type: .mainCourse, country: JAPAN, desc: "Boeuf Teryiaki", image: #imageLiteral(resourceName: "teriyaki"))
        allDishs.append(boeuf)
        let glace = Dish(type: .dessert, country: JAPAN, desc: "Glace au thé vert et Sésame", image: #imageLiteral(resourceName: "glace thé vert"))
        allDishs.append(glace)
        
        let nacho = Dish(type: .entree, country: MEXICO, desc: "Dish de nachos dorés au fromage fondu", image: #imageLiteral(resourceName: "nachos"))
        allDishs.append(nacho)
        let fajitas = Dish(type: .mainCourse, country: MEXICO, desc: "Fajitas boeuf ou poulet", image: #imageLiteral(resourceName: "fajitas"))
        allDishs.append(fajitas)
        let sop = Dish(type: .dessert, country: MEXICO, desc: "Sopapilla, un amour de beignet tout droit venu du Yucatan", image: #imageLiteral(resourceName: "sopapilla"))
        allDishs.append(sop)
        
        let char = Dish(type: .entree, country: SWISS, desc: "Disheau de charcuterie suisse", image: #imageLiteral(resourceName: "charcuterie"))
        allDishs.append(char)
        let fond = Dish(type: .mainCourse, country: SWISS, desc: "Fondue au fromage", image: #imageLiteral(resourceName: "fondue"))
        allDishs.append(fond)
        let gateau = Dish(type: .dessert, country: SWISS, desc: "Gateau au véritable chocolat Suisse", image: #imageLiteral(resourceName: "geateau au chocolat suisse"))
        allDishs.append(gateau)
        
        return allDishs
    }
}
