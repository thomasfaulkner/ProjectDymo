//
//  LabelArray.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation

struct LabelsBundle {
    var array: [String]
    
    // Get-only property; strings should only be added or removed from .array
    var formattedArray: [String] {
        get {
            // If .array is empty, return the array unchanged
            if array.isEmpty == false {
                
                var editedArray = [String]()
                
                // Format each item in the array
                array.forEach { item in
                    var formattedItem: String
                    
                    // Trim white space and new lines from ends of labels
                    formattedItem = item.trimmingCharacters(in: .whitespacesAndNewlines)
                    
                    editedArray.append(formattedItem)
                }
                
                // Filter all empty strings from the array
                let filteredArray = editedArray.filter { $0 != "" }
                
                return filteredArray
            } else {
                return array
            }
        }
    }
}
