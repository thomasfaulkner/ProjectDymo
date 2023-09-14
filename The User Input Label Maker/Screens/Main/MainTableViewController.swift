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
        
        // MARK: Configure Table View
        tableView.delegate = delegate
        tableView.dataSource = dataSource
        
        // Register custom cells and header/footer views
        registerCellsAndViews(forTableView: tableView)
        
        // MARK: Configure Navigation Bar
        if let navBar = self.navigationController?.navigationBar {
            NavigationBarConfigurationHelpers.configureNavigationBar(navBar)
        }
        
        // Configure back button text
        NavigationBarConfigurationHelpers.configureParentBackButtonNavigationItem(navigationItem, withBackButtonText: "Label Maker")
    }
    
    func registerCellsAndViews(forTableView tableView: UITableView) {
        // Register HeaderFooterView
        tableView.register(HeaderFooterView.self, forHeaderFooterViewReuseIdentifier: HeaderFooterView.reuseIdentifier)
        
        // Register DisclosureTableViewCell
        tableView.register(DisclosureTableViewCell.self, forCellReuseIdentifier: DisclosureTableViewCell.reuseIdentifier)
    }
}

