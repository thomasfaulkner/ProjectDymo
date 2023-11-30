//
//  TextFieldTableViewControllerDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

class TextFieldTableViewControllerDataSource: NSObject, UniversalTextEntryDataSource {
    var textFieldContent = [IndexPath : String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Sections 0 and 1 use text field cell, Section 2 uses disclosure cell
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Patient's Address"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            cell.editingChangedAction = { [weak self] (thisCell) in
                self?.textFieldContent[indexPath] = LabelStorageHelpers.textFromField(inCell: thisCell)
            }
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.reuseIdentifier, for: indexPath) as! TextFieldTableViewCell
            
            let placeholderText = "Address"
            cell.textField.placeholder = placeholderText
            cell.accessibilityUserInputLabels = ["\(placeholderText)"]
            
            cell.editingChangedAction = { [weak self] (thisCell) in
                self?.textFieldContent[indexPath] = LabelStorageHelpers.textFromField(inCell: thisCell)
            }
            
            return cell
        case 2:
            let cell = ReusableCellConfigurationHelpers.configureGenerateLabelsCell(forTableView: tableView, atIndexPath: indexPath)
            
            return cell
        default:
            fatalError("TextFieldTableViewDataSource cellForRowAt: This should never default.")
        }
    }
}
