//
//  TipsTableViewControllerCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

extension TipsTableViewController {
    
    // No cell in the Tips TVC is selectable.
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        return
    }
}
