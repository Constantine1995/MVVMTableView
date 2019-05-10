//
//  TableViewController.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profiles = [
            Profile(name: "Constantine", secondName: "Likhachov", age: 23),
            Profile(name: "Dmytro", secondName: "Likhachov", age: 23),
            Profile(name: "Nikolay", secondName: "Gustilin", age: 21)]
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell else { return UITableViewCell() }
      
        let profile = profiles[indexPath.row]
        tableViewCell.ageLabel.text = String(profile.age)
        tableViewCell.fullNameLabel.text =  String(profile.name + " " + profile.secondName)
        return tableViewCell
    }
    
}
