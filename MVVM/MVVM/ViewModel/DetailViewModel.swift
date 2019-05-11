//
//  DetailViewModel.swift
//  MVVM
//
//  Created by mac on 5/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
