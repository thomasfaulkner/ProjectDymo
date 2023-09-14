//
//  ButtonOrSegmentedControlTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

class ButtonOrSegmentedControlTableViewController: UITableViewController {
    
    let delegate = ButtonOrSegmentedControlTableViewDelegate()
    let dataSource = ButtonOrSegmentedControlTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
