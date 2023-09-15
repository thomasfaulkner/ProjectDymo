//
//  MainTableViewControllerHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

extension MainTableViewController {
    // MARK: Configure Header/Footer View
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // All that's left to configure here is text content, font, accessibility labels, and accessibility traits.
        
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nCONTROL TYPE"
        case 1:
            headerFooterView.label.text = "LEARN"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Control Type"
        case 1:
            headerFooterView.accessibilityLabel = "Learn"
        default:
            return nil
        }
        
        // Configure accessibility traits
        headerFooterView.label.accessibilityTraits = [.header]
        
        return headerFooterView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // All that's left to configure here is text content, font, and accessibility traits.
        
        #warning("This is currently placeholder incase I add a footer on the main screen — can leave empty or delete (?) if one is never added.")
        
        return nil
    }
}
