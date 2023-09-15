//
//  TextButtonCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

extension TextButtonTableViewController {
    // MARK: Configure Cell Selection
    
    // Only the Generate Labels button (Section 2) is selectable
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        switch indexPath.section {
        case 0, 1:
            return nil
        case 2:
            return indexPath
        default:
            return nil
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0, 1:
            return
        case 2:
            #warning("Incomplete - add label storage function and navigation")
            return
        default:
            return
        }
    }
}
