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
            if array.isEmpty == false {
                var newArray = [String]()
                array.forEach { item in
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
