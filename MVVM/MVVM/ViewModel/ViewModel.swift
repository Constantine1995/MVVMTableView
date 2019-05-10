//
//  ViewModel.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var  profiles = [
        Profile(name: "Constantine", secondName: "Likhachov", age: 23),
        Profile(name: "Dmytro", secondName: "Likhachov", age: 23),
        Profile(name: "Nikolay", secondName: "Gustilin", age: 21)]
    
    var numberOfRows: Int {
        return profiles.count
    }
}
