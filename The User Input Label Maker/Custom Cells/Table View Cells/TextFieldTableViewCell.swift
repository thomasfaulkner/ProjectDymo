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
        
        field.borderStyle = .roundedRect
        field.clearButtonMode = .whileEditing
        
        return field
    }()
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
        
        #warning("May have to configure what is and isn't an accessibility element/what responds to user interaction")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helper Functions
    
    func textFromField() -> String? {
        if let text = textField.text {
            return text
        } else {
            return nil
        }
    }
}
