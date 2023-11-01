//
//  TipsTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

class TipsTableViewController: UniversalTableViewController {
    let dataSource = TipsTableViewControllerDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User Input Label Tips"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.plain, .headerFooterView])
    }
}
