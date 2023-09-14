//
//  DisclosureTableViewCell.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import UIKit

class DisclosureTableViewCell: UITableViewCell {
    static let reuseIdentifier: String = "org.pumpkintoss.DisclosureTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // This cell is exactly the same as PlainTableViewCell, except it has a disclosure indicator arrow
        
        // Configure disclosure indicator
        accessoryType = .disclosureIndicator
        
        // Configure cell background color
        backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        
        // Configure cell tint color (color overlaid on selection)
        tintColor = ThemeColorKit.orangeAccent()
        
        // Configure background view for selected state
        let selectedStateBackgroundView = UIView()
        selectedBackgroundView = selectedStateBackgroundView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

