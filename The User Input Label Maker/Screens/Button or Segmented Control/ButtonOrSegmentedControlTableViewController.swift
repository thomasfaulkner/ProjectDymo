//
//  ButtonOrSegmentedControlTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

class ButtonOrSegmentedControlTableViewController: UniversalTableViewController {
    
    let dataSource = ButtonOrSegmentedControlTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Button or Segmented Control"
        backButtonText = "Button"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView])
    }
}
