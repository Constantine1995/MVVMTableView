//
//  TableViewModelType.swift
//  MVVM
//
//  Created by mac on 5/10/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
}
