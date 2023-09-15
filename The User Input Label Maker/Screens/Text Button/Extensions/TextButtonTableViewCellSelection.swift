//
//  TextButtonCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

extension TextButtonTableViewController {
    // MARK: Configure Cell Selection
    
    // Only the Generate Labels button (Section 2) is selectable
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        switch indexPath.section {
        case 0, 1:
            return nil
        case 2:
            return indexPath
        default:
            return nil
        }
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0, 1:
            return
        case 2:
            let textFieldCellIndexPaths: [IndexPath] = [
                IndexPath(row: 0, section: 0),
                IndexPath(row: 0, section: 1)
            ]
            
            #warning("Incomplete - add navigation")
            
            // Get text from each text field, collect it in an array of Strings, wrap that array in a LabelsBundle object, and store that bundle as a property in this table view controller.
            labelsBundle = LabelStorageHelpers.makeLabelsBundleFromTableView(tableView, atIndexPaths: textFieldCellIndexPaths)
            
            print("Array: \(labelsBundle.array)\nFormatted Array: \(labelsBundle.formattedArray)")
            
            return
        default:
            return
        }
    }
}
