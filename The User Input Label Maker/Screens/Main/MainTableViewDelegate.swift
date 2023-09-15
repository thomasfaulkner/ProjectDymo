//
//  MainTableViewDelegate.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/12/23.
//

import Foundation
import UIKit

class MainTableViewDelegate: NSObject, UniversalTableViewDelegate {
    
    // MARK: - Configure Size
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 53
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 53
    }
    
    // MARK: - Configure Header/Footer View
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // All that's left to configure in the delegate is text content, font, accessibility labels, and accessibility traits.
        
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
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // All that's left to configure in the delegate is text content, font, and accessibility traits.
        
        #warning("This is currently placeholder incase I add a footer on the main screen — can leave empty or delete (?) if one is never added.")
        
        return nil
    }
    
    // MARK: - Configure Cell Selection
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        // All cells are selectable, so return indexPath for everything. If this changes, return nil for that indexPath.
        return indexPath
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        #warning("Still needs to be configured. Consider putting all new screen launcher functions in their own file.")
        tableView.deselectRow(at: indexPath, animated: true) // DELETE THIS
        return
    }
    
}
