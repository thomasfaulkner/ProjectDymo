//
//  TextButtonTableViewHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

extension TextButtonTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nORIGINAL TEXT"
        case 1:
            headerFooterView.label.text = "OPTIONAL: SHORTENED TEXT"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Original Text"
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
            headerFooterView.label.text = "Write the button's full text."
        case 1:
            headerFooterView.label.text = "If the text is long or difficult to say, write a one- or two-word abbreviated version.\n\nFor example, this text field's abbreviated label could be \"Shortened Text\"."
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Write the button's full text."
        case 1:
            headerFooterView.accessibilityLabel = "If the text is long or difficult to say, write a one- or two-word abbreviated version.\n\nFor example, this text field's abbreviated label could be \"Shortened Text\"."
        default:
            return nil
        }
        
        // No accessibility traits to configure for footers
        
        return headerFooterView
    }
}
