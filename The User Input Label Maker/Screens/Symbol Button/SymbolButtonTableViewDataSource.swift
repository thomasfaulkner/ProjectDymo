//
//  SymbolButtonTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/3/23.
//

import UIKit

class SymbolButtonTableViewDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Sections 0, 1, and 2 use text field cell, Section 3 uses disclosure cell
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Weather"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Cloud"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Rain"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            return cell
        case 3:
            // Configure "Generate Labels" cell using reusable configuration helper
            let cell = ReusableCellConfigurationHelpers.configureGenerateLabelsCell(forTableView: tableView, atIndexPath: indexPath)
            return cell
        default:
            fatalError("SymbolButtonTableViewDataSource cellForRowAt: This should never default")
        }
    }
    
    
}
