//
//  CellRegistrationHelpers.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import Foundation
import UIKit

struct CellRegistrationHelpers {
    static func registerCellsAndViews(forTableView tableView: UITableView, withCellViewTypes cellViewTypes: [CellViewType]) {
        if cellViewTypes.contains(.plain) {
            tableView.register(PlainTableViewCell.self, forCellReuseIdentifier: PlainTableViewCell.reuseIdentifier)
        }
        
        if cellViewTypes.contains(.disclosure) {
            // Register DisclosureTableViewCell
            tableView.register(DisclosureTableViewCell.self, forCellReuseIdentifier: DisclosureTableViewCell.reuseIdentifier)
        }
        
        if cellViewTypes.contains(.textField) {
            tableView.register(TextFieldTableViewCell.self, forCellReuseIdentifier: TextFieldTableViewCell.reuseIdentifier)
        }
        
        if cellViewTypes.contains(.multilineTextView) {
            tableView.register(MultilineTextViewTableViewCell.self, forCellReuseIdentifier: MultilineTextViewTableViewCell.reuseIdentifier)
        }
        
        if cellViewTypes.contains(.headerFooterView) {
            // Register HeaderFooterView
            tableView.register(HeaderFooterView.self, forHeaderFooterViewReuseIdentifier: HeaderFooterView.reuseIdentifier)
        }
    }
}
