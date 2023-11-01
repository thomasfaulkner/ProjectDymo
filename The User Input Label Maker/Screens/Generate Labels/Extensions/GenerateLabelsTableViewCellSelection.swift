//
//  GenerateLabelsTableViewCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

extension GenerateLabelsTableViewController {
    // MARK: Configure Cell Selection
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        switch indexPath.section {
        case 0:
            return nil
        case 1:
            return indexPath
        default:
            return nil
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            return
        case 1:
            tableView.deselectRow(at: indexPath, animated: true)
            copyLabels()
        default:
            return
        }
    }
}
