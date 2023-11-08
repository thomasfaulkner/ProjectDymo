//
//  TextFieldTableViewControllerCellSelection.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/18/23.
//

import UIKit

extension TextFieldTableViewController {
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
            
            // MARK: Make labels bundle object to pass into next VC
            
            let stringDictionary = dataSource.textFieldContent
            
            labelsBundle = LabelStorageHelpers.makeLabelsBundle(fromStringDictionary: stringDictionary)
            
            print("Array: \(labelsBundle.array)\nFormatted Array: \(labelsBundle.formattedArray)")
            
            // MARK: Push to GenerateLabelsTableViewController
            let vc = GenerateLabelsTableViewController()
            
            // Push to GenerateLabelsTabeViewController, and pass the current LabelsBundle object to the new screen
            vc.labelsBundle = labelsBundle
            show(vc, sender: self)
        default:
            return
        }
    }
}
