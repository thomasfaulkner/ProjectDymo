//
//  PlainTableViewCell.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import UIKit

class PlainTableViewCell: UITableViewCell {
    static let reuseIdentifier: String = "org.pumpkintoss.PlainTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Configure cell background color
        backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        
        // Configure translucent overlay that is displayed on cell selection
        selectedBackgroundView = UniversalSelectionStateBackgroundView()
        
        // MARK: Configure Selection Behavior
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
