//
//  MainTableViewControllerCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

extension MainTableViewController {
    // MARK: Configure Selection
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        // All cells are selectable, so return indexPath for everything. If this changes, return nil for that indexPath.
        return indexPath
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Push to new TableViewControllers using show(_:, sender:)
        
        switch indexPath.section {
        case 0: // Section 0: "CONTROL TYPE"
            switch indexPath.row {
            case 0:
                let vc = ButtonOrSegmentedControlTableViewController()
                show(vc, sender: self)
            case 1:
                let vc = SliderSwitchOrStepperTableViewController()
                show(vc, sender: self)
            case 2:
                let vc = TextFieldTableViewController()
                show(vc, sender: self)
            default:
                return
            }
        case 1: // Section 1: "LEARN"
            // There's only one row in this section, so no indexPath.row switch needed currently
            let vc = TipsTableViewController()
            show(vc, sender: self)
        default:
            return
        }
    }
}
