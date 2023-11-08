//
//  UniversalTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

class UniversalTableViewController: UITableViewController {
    
#warning("Removed text on 10/2/23 because back button text was causing title text to truncate")
    // This should be set in loadView()
    //var backButtonText: String = ""
    
    init() {
        super.init(style: .insetGrouped)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Things that will be configured at call site:
         - title
         - Assign table view data source
         - Configure table view delegate
         */
        
        // MARK: Configure Navigation Bar
        
        // Set navigation bar title
        navigationController?.navigationBar.prefersLargeTitles = false
        
        // Set back button text
        #warning("Removed text on 10/2/23 because back button text was causing title text to truncate")
        NavigationBarConfigurationHelpers.configureParentBackButtonNavigationItem(navigationItem)
        
        // Configure navigation bar appearance
        if let navBar = navigationController?.navigationBar {
            NavigationBarConfigurationHelpers.configureNavigationBar(navBar)
        }
        
        // MARK: Configure Table View
        
        /// Configure table view delegate and data source at call site.
        /// Register cells and header/footer views at call site.
        
        // Instantiate a new table view from the universal template, then assign it to the main table view managed by this controller
        let mainTableView = UniversalTableView()
        tableView = mainTableView
        
        // Configure table view to clear selection when navigated back to
        clearsSelectionOnViewWillAppear = true
    }
}
