//
//  TextButtonTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class TextButtonTableViewController: UniversalTableViewController {
    let dataSource = TextButtonTableViewDataSource()
    
    // Start out with a placeholder LabelsBundle object to be written-to when "Generate Labels" is selected
    var labelsBundle = LabelsBundle(array: [String]())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Text"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView, .textField])
    }
}
