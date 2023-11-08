//
//  TipsTableViewControllerHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

extension TipsTableViewController {
    // MARK: Configure Header/Footer Views — no footer in this TVC
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerFooterText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nTIPS"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Tips"
        default:
            return nil
        }
        
        // Configure accessibility traits
        headerFooterView.label.accessibilityTraits = [.header]
        
        return headerFooterView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // No footers on this screen
        return nil
    }
}
