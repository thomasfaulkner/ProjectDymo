//
//  ButtonOrSegmentedControlTableViewControllerCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

extension ButtonOrSegmentedControlTableViewController {
    // MARK: Configure Cell Selection
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        // All cells are selectable, so return indexPath for everything. If this changes, return nil for that indexPath.
        return indexPath
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
#warning("Incomplete")
        
        // Push to new TableViewControllers using show(_:, sender:)
        
        switch indexPath.section {
        case 0: // "Text"
            let vc = TextButtonTableViewController()
            show(vc, sender: self)
        case 1: // "Symbol Only"
            #warning("Incomplete")
            return
        default:
            return
        }
    }
}
