//
//  TipsTableViewControllerDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

class TipsTableViewControllerDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        #warning("This should be updated if any tips are added or removed.")
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PlainTableViewCell.reuseIdentifier, for: indexPath) as! PlainTableViewCell
        
        // Configure text content to be used for both text label and accessibility label
        var textContent: String {
            switch indexPath.section {
            case 0: // Section 0: "TIPS"
                switch indexPath.row {
                case 0:
                    return "• Double check other labels on each screen to make sure no labels are used twice. It might be helpful to keep all of your User Input Labels in one file to easily verify that there are no duplicates."
                case 1:
                    return "• Having labels for common alternate symbol names can be helpful to a user who doesn't choose to show control names onscreen. However, having too many alternate names set as User Input Labels could cause accidental input or overlap with other labels. Stick to one, maybe two alternates at most."
                case 2:
                    return "• When using a symbol as a button, if the symbol's meaning has many alternate names, consider adding text to the control for clarity. For instance, \"🌧️ Weather\" is more clear than \"🌧️\"."
                case 3:
                    return "• Some \"controls\" are really a collection of controls; each interactive element should be labeled appropriately. For example, a time picker is really three rotary steppers: Hour, Minute, and Meridiem. They are controlled with Voice Control as \"Increment Hour\" or \"Decrement Minute\"."
                case 4:
                    return "• Ideally, all User Input Labels should be localized."
                default:
                    return ""
                }
            default:
                return ""
            }
        }
        
        // Configure cell content
        cell.contentConfiguration = TableViewCellContentConfigurations.basicTextOnlyCell(withText: textContent)
        
        // Configure accessibility label
        cell.accessibilityLabel = textContent
        
        // No accessibility traits to configure for these cells
        
        return cell
    }
}
