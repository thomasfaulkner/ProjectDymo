//
//  MainTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/12/23.
//

import UIKit

class MainTableViewDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Use DisclosureTableViewCell to show a disclosure arrow
        let cell = tableView.dequeueReusableCell(withIdentifier: DisclosureTableViewCell.reuseIdentifier, for: indexPath) as! DisclosureTableViewCell
        
        // Configure text content to be used for both text label and accessibility label
        var textContent: String {
            switch indexPath.section {
            case 0: // Section 0: "CONTROL TYPE"
                switch indexPath.row {
                case 0:
                    return "Button or Segmented Control"
                case 1:
                    return "Slider, Switch, or Stepper"
                case 2:
                    return "Text Field"
                default:
                    return ""
                }
            case 1: // Section 1: "LEARN"
                return "User Input Label Tips"
            default:
                return ""
            }
        }
        
        // Configure cell content
        cell.contentConfiguration = TableViewCellContentConfigurations.basicButtonCell(withText: textContent)
        
        // Configure automation identifiers
        cell.accessibilityIdentifier = textContent
        
        // Configure accessibility label
        cell.accessibilityLabel = textContent
        
        // Mark all cells as Buttons for accessibility tools
        cell.accessibilityTraits = [.button]
        
        return cell
    }
}
