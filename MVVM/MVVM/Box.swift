//
//  Box.swift
//  MVVM
//
//  Created by mac on 5/12/19.
//  Copyright © 2019 mac. All rights reserved.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> Void
    
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
