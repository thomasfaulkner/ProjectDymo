//
//  LabelArray.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation

struct GeneratedLabels {
    var array: [String]
    
    // Get-only property; strings should only be added or removed from .array
    var formattedArray: [String] {
        get {
            // If .array is empty, return the array unchanged
            if array.isEmpty == false {
                var newArray = [String]()
                array.forEach { item in
                    // Trim white space and new lines from ends of labels
                    let trimmedItem = item.trimmingCharacters(in: .whitespacesAndNewlines)
                    newArray.append(trimmedItem)
                }
                return newArray
            } else {
                return array
            }
        }
    }
}
