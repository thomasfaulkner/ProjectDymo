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
                    
                    // NOTE: after this point in the function, edit formattedItem, not item
                    
                    /// I WAS going to just strip all punctuation, but there are times when there should be punctuation in a user input label, such as when the touch target is an email or phone number.
                    /// Instead, I set the keyboard types in the text field and text view cells to email, because the email keyboard lines up nicely with the punctuation requirements for user input labels — normal double quotes ("") are disallowed, but almost all other punctuation is allowed.
                    
                    #warning("It may eventually be a good idea to trim punctuations from the ends of the labels. Emails, phone numbers, etc. would still be okay, but punctuation at the end of sentences would be stripped. HOWEVER, while stylistically preferable, stripping punctuation may interfere with readability. For instance, if a button says Give It a Try? and the UIL says Give It A Try, it might appear incongruent.")
                    
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
