//
//  LabelStorageHelpers.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

struct LabelStorageHelpers {
    // Called in table view data source to get text content of text field cells for storage in a [IndexPath : String] dictionary.
    static func textFromField(inCell cell: UITableViewCell) -> String? {
        // If the cell is not a text field cell, return nil
        guard let textFieldCell = cell as? TextFieldTableViewCell else { return nil }
        
        // If there is no text in the text field, return nil
        if let textContent = textFieldCell.textField.text {
            return textContent
        } else {
            return nil
        }
    }
    
    // This function takes a string dictionary stored in a table view data source and returns a LabelsBundle. If the string dictionary is empty, it will return a LabelsBundle with an empty string array.
    static func makeLabelsBundle(fromStringDictionary stringDictionary: [IndexPath : String]) -> LabelsBundle {
        print("Here's the string dictionary I'm making a labels bundle from: \(stringDictionary)")
        
        // Sort dictionary by key (indexPath) from lowest to highest, because the text fields on a page are ordered from most to least important.
        // This is important for the labels bundle, because a User Input Labels array is accessed in order of priority starting at index 0.
        let sortedDictionaryArray = stringDictionary.sorted {
            $0.0 < $1.0
        }
        
        var stringsFromSortedDictionary = [String]()
        
        for (_, value) in sortedDictionaryArray {
            stringsFromSortedDictionary.append(value)
        }
        
        if stringsFromSortedDictionary.isEmpty {
            return LabelsBundle(array: [String]())
        } else {
            return LabelsBundle(array: stringsFromSortedDictionary)
        }
    }
    
    #warning("Leaving these comments in for a little while for reference in case there's anything I missed in the rewrite")
//    static func makeLabelsBundleFromTableView(_ tableView: UITableView, atIndexPaths indexPaths: [IndexPath]) -> LabelsBundle {
//        
//        /// Tree "diagram" of how this function works:
//        ///
//        /// - textFromFieldsInTableView checks cells at an array of IndexPaths to see if they are text field cells, and if those cells have any text. If it finds text, it appends it to an empty array of Strings. If it found any text while looking through all the cells, it will return an array of Strings; if not, it will return nil.
//        ///     - If textFromFieldsInTableView returned an array of Strings, labelsBundleFromStringArray turns that array into a LabelsBundle object.
//        ///         - Finally, makeLabelsBundleFromTableView returns a LabelsBundle object made from that array of Strings.
//        ///     - If textFromFieldsInTableView returned nil, a new LabelsBundle object is made with an empty array of strings.
//        ///         - Finally, makeLabelsBundleFromTableView returns that new LabelsBundle object.
//        
//        func labelsBundleFromStringArray(_ stringArray: [String]) -> LabelsBundle {
//            print("Returning LabelsBundle(array: stringArray)")
//            return LabelsBundle(array: stringArray)
//        }
//        
//        func textFromFieldsInTableView(_ tableView: UITableView, atIndexPaths indexPaths: [IndexPath]) -> [String]? {
//            
//            /// There are two things that can make this function return nil:
//            /// - If the cell checked is not a text field cell
//            /// - If the final string array is empty after looking at every indexPath
//            
//            var stringArray = [String]()
//            
//            func textFromTextFieldCell(_ cell: TextFieldTableViewCell) -> String? {
//                if let text = cell.textField.text {
//                    print("Returning text: \(text)")
//                    return text
//                } else {
//                    print("Returning nil - text field did not contain text")
//                    return nil
//                }
//            }
//            
//            // Check for text in the cell at each indexPath specified
//            for indexPath in indexPaths {
//                // Check to make sure the cell is a text field cell; if not, return nil
//                if let cell = tableView.cellForRow(at: indexPath) as? TextFieldTableViewCell {
//                    // Check for text in cell; if it has text, append it to string array
//                    if let text = textFromTextFieldCell(cell) {
//                        stringArray.append(text)
//                    }
//                } else {
//                    print("Returning nil - cell is not a TextFieldTableViewCell")
//                    return nil
//                }
//            }
//            
//            if stringArray.isEmpty == false {
//                print("Returning stringArray")
//                return stringArray
//            } else {
//                print("Returning nil - string array is empty")
//                return nil
//            }
//        }
//        
//        // If stringsArray != nil, turn it into a LabelsBundle object and return that object
//        // If stringsArray IS nil, create a new LabelsBundle object with an empty array and return that object
//        
//        if let stringsArray = textFromFieldsInTableView(tableView, atIndexPaths: indexPaths) {
//            print("Returning labelsBundleFromStringArray(stringsArray)")
//            return labelsBundleFromStringArray(stringsArray)
//        } else {
//            print("Returning new LabelsBundle with empty string array because stringArray was nil")
//            return LabelsBundle(array: [String]())
//        }
//    }
}
