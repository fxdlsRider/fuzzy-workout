//
//  ViewController.swift
//  CustomCell8
//
//  Created by Zoran Zdravkovic on 26.01.20.
//  Copyright © 2020 Zoran Zdravkovic. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dragon = DragonStruct(dragonImage: ["dragon1, dragon2"], dragonLabel: "Random dragons live here")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragon.dragonImage.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DragonCell", for: indexPath) as? DragonCell else { fatalError() }
        
        cell.dragonImage.image = UIImage(named: dragon.dragonImage[indexPath.row])
        cell.dragonLabel.text = dragon.dragonLabel
        
        return cell
    }
}
