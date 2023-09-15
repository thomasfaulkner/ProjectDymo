//
//  MainTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas on 8/26/23.
//

import UIKit

class MainTableViewController: UniversalTableViewController {
    
    let delegate = MainTableViewDelegate()
    let dataSource = MainTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User Input Label Maker"
        backButtonText = "Label Maker"
        
        // MARK: Configure Table View
        
        // Configure table view delegate and data source
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView])
    }
}

