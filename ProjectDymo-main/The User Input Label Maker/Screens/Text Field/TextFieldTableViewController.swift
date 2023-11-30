//
//  TextFieldTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

class TextFieldTableViewController: UniversalTableViewController {
    let dataSource = TextFieldTableViewControllerDataSource()
    
    // Start out with a placeholder LabelsBundle object to be written to when "Generate Labels" is selected
    var labelsBundle = LabelsBundle(array: [String]())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Text Field"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Configure automation identifier
        tableView.accessibilityIdentifier = title
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView, .textField])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.view.endEditing(true)
    }
}
