//
//  TableViewModelType.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation
protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
