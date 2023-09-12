//
//  ViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas on 8/26/23.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    let delegate = MainTableViewDelegate()
    let dataSource = MainTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User Input Label Maker"
        navigationController?.navigationBar.prefersLargeTitles = false
        
        // Configure Table View
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        
    }
}

