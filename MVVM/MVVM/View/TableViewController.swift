//
//  TableViewController.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()

    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows ?? 0
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
      
        let profile = viewModel.profiles[indexPath.row]
        tableViewCell.ageLabel.text = String(profile.age)
        tableViewCell.fullNameLabel.text =  String(profile.name + " " + profile.secondName)
        return tableViewCell
    }
    
}