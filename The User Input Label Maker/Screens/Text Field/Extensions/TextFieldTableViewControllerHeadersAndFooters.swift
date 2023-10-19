//
//  TextFieldTableViewControllerHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

extension TextFieldTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nPLACEHOLDER TEXT"
        case 1:
            headerFooterView.label.text = "OPTIONAL: SHORTENED TEXT"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Placeholder Text"
        case 1:
            headerFooterView.accessibilityLabel = "Optional: Shortened Text"
        default:
            return nil
        }
        
        // Configure accessibility traits
        headerFooterView.label.accessibilityTraits = [.header]
        
        return headerFooterView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.footerText()
        
        // Configure text content of footer views
        switch section {
        case 0:
            headerFooterView.label.text = "Write the text field's full placeholder text.\n\nIf the field doesn't have placeholder text, write the full title or label that describes it."
        case 1:
            headerFooterView.label.text = "If the text is long or difficult to say, write a one- or two-word abbreviated version."
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Write the text field's full placeholder text. If the field doesn't have placeholder text, write the full title or label that describes it."
        case 1:
            headerFooterView.accessibilityLabel = "If the text is long or difficult to say, write a one- or two-word abbreviated version."
        default:
            return nil
        }
        
        // No accessibility traits to configure for footers
        
        return headerFooterView
    }
}
