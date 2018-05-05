//
//  carteController.swift
//  FoodWorld
//
//  Created by christophe milliere on 01/05/2018.
//  Copyright © 2018 christophe milliere. All rights reserved.
//

import UIKit

class CarteController: UITableViewController {
    
    let cellID = "CarteCell"
    var allDishs: [MenuCompleted]()

    override func viewDidLoad() {
        super.viewDidLoad()
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
 
}
