//
//  GenerateLabelsTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class GenerateLabelsTableViewDataSource: NSObject, UniversalTableViewDataSource {
    
    var labelsBundle: LabelsBundle
    
    init(labelsBundle: LabelsBundle) {
        self.labelsBundle = labelsBundle
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // No need to break out into section switch, as both sections only have one row
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Section 0 uses a multiline text view cell, Section 1 uses a plain table view cell
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: MultilineTextViewTableViewCell.reuseIdentifier, for: indexPath) as! MultilineTextViewTableViewCell
            
            cell.textView.text = "\(labelsBundle.formattedArray)"
            cell.textView.accessibilityUserInputLabels = ["Formatted Labels", "Labels"]
            
            // Set automation identifier
            cell.textView.accessibilityIdentifier = "Formatted Labels"
            
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: PlainTableViewCell.reuseIdentifier, for: indexPath) as! PlainTableViewCell
            
            let textContent = "📋 Copy Labels"
            
            /// This is the only Plain cell that should change appearance on selection, as it behaves like a button but does not require a disclosure indicator
            // Replace .none selection style from PlainTableViewCell with .default
            cell.selectionStyle = .default
            
            // Configure cell content
            cell.contentConfiguration = TableViewCellContentConfigurations.basicButtonCell(withText: textContent)
            
            // Configure accessibility label
            cell.accessibilityLabel = "Copy Labels"
            
            cell.accessibilityUserInputLabels = ["Copy Labels"]
            
            // Mark all cells as Buttons for accessibility tools
            cell.accessibilityTraits = [.button]
            
            return cell
        default:
            fatalError("GenerateLabelsTableViewDataSource cellForRowAt: This should never default.")
        }
    }
}
