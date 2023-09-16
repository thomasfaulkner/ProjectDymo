//
//  TextButtonTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class TextButtonTableViewDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // All sections have only one row
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Sections 0 and 1 use text field cell, Section 2 uses disclosure cell
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Check Out More Albums"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeHolderText = "More Albums"
            cell.textField.placeholder = placeHolderText
            cell.accessibilityUserInputLabels = ["\(placeHolderText)"]
            
            return cell
        case 2:
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
        default:
            fatalError("TextButtonTableViewDataSource cellForRowAt: This should never default.")
        }
    }
}
