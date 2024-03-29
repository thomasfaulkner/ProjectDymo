//
//  TextFieldTableViewCell.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

class TextFieldTableViewCell: UITableViewCell {
    static let reuseIdentifier: String = "org.pumpkintoss.TextFieldTableViewCell"
    
    // MARK: - Cell Components
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let textField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        
        field.borderStyle = .none
        field.clearButtonMode = .whileEditing
        
        // Setting keyboard type to email address because the allowed characters line up nicely with how user input labels would need to be formatted — notably, it disallows quotations, but allows most other punctuation.
        #warning("May have to remove this, because it might be causing some weird recurring error in the debugger")
        field.keyboardType = .emailAddress
        
        return field
    }()
    
    // MARK: - Action Closure
    
    // This closure will be passed in at the call site (table view data source).
    // The closure will store a text field's text content in a string dictionary.
    var editingChangedAction: ((UITableViewCell) -> Void)?
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Things left to be configured at call site: placeholder text content, accessibility user input labels. These text field cells should not need accessibility traits.
        
        // Add subviews
        contentView.addSubview(containerView)
        containerView.addSubview(textField)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            
            textField.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            textField.topAnchor.constraint(equalTo: containerView.topAnchor),
            textField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        // Call editingChanged(_:) whenever editing changes in a text field. editingChanged(_:) then calls the editingChangedAction closure.
        textField.addTarget(self, action: #selector(editingChanged(_:)), for: .editingChanged)
        
        // MARK: Configure Text
        
        textField.textAlignment = .natural
        textField.font = FontKit.bodyTextRegular()
        
        textField.adjustsFontForContentSizeCategory = true
        
        // MARK: Configure Colors
        
        containerView.backgroundColor = .clear
        
        backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        textField.backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        
        textField.textColor = ThemeColorKit.bodyTextColor()
        
        // MARK: Configure Selection Behavior
        selectionStyle = .none
        
        // MARK: Configure Accessibility
        #warning("This may be the correct behavior, but I'm not sure")
        self.shouldGroupAccessibilityChildren = true
        
        // Text field cells should not need accessibility traits
        // Accessibility user input labels will be set individually at call site
    }
    
    // Call the closure passed in from table view data source
    @objc func editingChanged(_ textField: UITextField) {
        editingChangedAction?(self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
