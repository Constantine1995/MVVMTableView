//
//  DetailTableViewController.swift
//  MVVM
//
//  Created by mac on 5/11/19.
//  Copyright © 2019 mac. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Связка свойства age с textLabel
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
