//
//  carteController.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CarteController: UITableViewController {
    
    let cellID = "CartCell"
    var allDishs = [MenuCompleted]()

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView(frame: tableView.bounds)
        view.layer.addSublayer(Gradient())
        tableView.backgroundView = view
        allDishs = TheDishs.getDishs.menuCompleted()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return allDishs.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allDishs[section].dishs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let dishs = allDishs[indexPath.section].dishs[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID) as? CarteCell {
            cell.setup(dish: dishs)
            return cell
        }
        return UITableViewCell()
    }
    
   override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let typeDishs = allDishs[section].type
        switch typeDishs {
        case .entree: return "Nos entrées"
        case .mainCourse: return "Nos Plats"
        case .dessert: return "Le coin des gourmands"
        }
    }
    
    
 
}
