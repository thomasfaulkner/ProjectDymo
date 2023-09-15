//
//  GenerateLabelsTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class GenerateLabelsTableViewController: UniversalTableViewController {
    let dataSource = GenerateLabelsTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Generate Labels"
        // Back button text not needed as this VC should not push to any children, but adding it just in case it ever does
        backButtonText = "Generate Labels"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        
    }
}
