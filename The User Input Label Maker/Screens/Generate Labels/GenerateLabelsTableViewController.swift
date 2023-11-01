//
//  GenerateLabelsTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class GenerateLabelsTableViewController: UniversalTableViewController {
    let dataSource = GenerateLabelsTableViewDataSource(labelsBundle: LabelsBundle(array: [String]()))
    var labelsBundle = LabelsBundle(array: [String]())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Generate Labels"
        
        // MARK: Configure Table View
        tableView.dataSource = dataSource
        dataSource.labelsBundle = labelsBundle
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.plain, .multilineTextView, .headerFooterView])
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.view.endEditing(true)
    }
}
