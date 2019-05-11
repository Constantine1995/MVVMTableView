//
//  ViewModel.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var  profiles = [
        Profile(name: "Constantine", secondName: "Likhachov", age: 23),
        Profile(name: "Dmytro", secondName: "Likhachov", age: 23),
        Profile(name: "Nikolay", secondName: "Gustilin", age: 21)]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
