//
//  MainTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas on 8/26/23.
//

import UIKit

class MainTableViewController: UniversalTableViewController {
    
    let dataSource = MainTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User Input Label Maker"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView])
    }
}

