//
//  ButtonOrSegmentedControlTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

class ButtonOrSegmentedControlTableViewDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // No need to break out into section switch, as both sections only have one row
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Use DisclosureTableViewCell to show a disclosure arrow
        let cell = tableView.dequeueReusableCell(withIdentifier: DisclosureTableViewCell.reuseIdentifier, for: indexPath) as! DisclosureTableViewCell
        
        var textContent: String {
            switch indexPath.section {
            case 0:
                return "Text"
            case 1:
                return "Symbol Only"
            default:
                return ""
            }
        }
        
        // Configure cell content
        cell.contentConfiguration = TableViewCellContentConfigurations.basicButtonCell(withText: textContent)
        
        // Configure accessibility label
        cell.accessibilityLabel = textContent
        
        // Mark all cells as Buttons for accessibility tools
        cell.accessibilityTraits = [.button]
        
        return cell
    }
}
