//
//  SymbolButtonTableViewHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/3/23.
//

import UIKit

extension SymbolButtonTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerFooterText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nRESULT, ACTION, OR DESTINATION"
        case 1:
            headerFooterView.label.text = "LITERAL SYMBOL NAME"
        case 2:
            headerFooterView.label.text = "COMMON ALTERNATE NAME"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Result, Action, or Destination"
        case 1:
            headerFooterView.accessibilityLabel = "Literal Symbol Name"
        case 2:
            headerFooterView.accessibilityLabel = "Common Alternate Name"
        default:
            return nil
        }
        
        headerFooterView.label.accessibilityTraits = [.header]
        
        return headerFooterView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerFooterText()
        
        // Configure text content of footer views
        switch section {
        case 0:
            headerFooterView.label.text = "For example, the destination for 🌧️ could be \"Weather\"."
        case 1:
            headerFooterView.label.text = "For example, 🌧️'s literal name is \"Rain\"."
        case 2:
            headerFooterView.label.text = "For example, 🌧️ could be \"Cloud\" or \"Storm\"."
        default:
            return nil
        }
        
        // No accessibility traits to configure for footers
        
        return headerFooterView
    }
}
