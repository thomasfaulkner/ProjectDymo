//
//  SymbolButtonTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/3/23.
//

import UIKit

class SymbolButtonTableViewController: UniversalTableViewController {
    let dataSource = SymbolButtonTableViewDataSource()
    
    // Start out with a placeholder LabelsBundle object to be written-to when "Generate Labels" is selected
    var labelsBundle = LabelsBundle(array: [String]())
    
    override func viewDidLoad() {
        title = "Symbol Only"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView, .textField])
    }
}
