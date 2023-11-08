//
//  CopyLabels.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/16/23.
//

import UIKit

extension GenerateLabelsTableViewController {
    func copyLabels() {
        // Copy formatted labels array to clipboard
        let pasteboard = UIPasteboard.general
        pasteboard.string = "\(labelsBundle.formattedArray)"
        print("Copied formattedArray to clipboard: \(labelsBundle.formattedArray)")
    }
}
