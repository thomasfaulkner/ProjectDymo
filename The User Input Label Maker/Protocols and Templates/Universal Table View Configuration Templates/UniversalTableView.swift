//
//  UniversalTableViewConfiguration.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

class UniversalTableView: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super .init(frame: frame, style: .insetGrouped) // Set table view style to .insetGrouped
        
        backgroundColor = ThemeColorKit.tableBackgroundColor()
        separatorColor = ThemeColorKit.tableSeparator()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
