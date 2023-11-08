//
//  ReusableCellConfigurationHelpers.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/3/23.
//

import UIKit

struct ReusableCellConfigurationHelpers {
    static func configureGenerateLabelsCell(forTableView tableView: UITableView, atIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DisclosureTableViewCell.reuseIdentifier, for: indexPath) as! DisclosureTableViewCell
        
        let textContent = "Generate Labels"
        
        // Configure cell content
        cell.contentConfiguration = TableViewCellContentConfigurations.basicButtonCell(withText: textContent)
        
        // Configure accessibility label
        cell.accessibilityLabel = textContent
        
        // Configure user input labels
        cell.accessibilityUserInputLabels = ["\(textContent)"]
        
        // Mark all cells as Buttons for accessibility tools
        cell.accessibilityTraits = [.button]
        
        return cell
    }
}
