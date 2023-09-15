//
//  MultilineTextViewTableViewCell.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import UIKit

class MultilineTextViewTableViewCell: UITableViewCell {
    static let reuseIdentifier: String = "org.pumpkintoss.MultilineTextViewTableViewCell"
    
    // MARK: - Cell Components
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let textView: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        #warning(".borderStyle is only available on iOS 17.0 or newer; not sure what I'll have to do here")
        // view.borderStyle = .none
        
        view.clearsOnInsertion = false
        view.isEditable = true
        view.allowsEditingTextAttributes = false
        
        view.autocapitalizationType = .none
        view.autocorrectionType = .no
        view.smartInsertDeleteType = .no
        
        view.isFindInteractionEnabled = true
        
        #warning("Not sure about this")
        view.isScrollEnabled = false
        
        return view
    }()
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Add subviews
        contentView.addSubview(containerView)
        containerView.addSubview(textView)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            
            textView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            textView.topAnchor.constraint(equalTo: containerView.topAnchor),
            textView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        // MARK: Configure Text
        
        textView.textAlignment = .natural
        textView.font = FontKit.bodyTextRegular()
        textView.keyboardType = .default
        
        textView.adjustsFontForContentSizeCategory = true
        
        // MARK: Configure Colors
        
        containerView.backgroundColor = .clear
        
        backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        textView.backgroundColor = ThemeColorKit.tableSecondaryBackgroundColor()
        
        textView.textColor = ThemeColorKit.bodyTextColor()
        
        // MARK: Configure Accessibility
        
        #warning("This may be the correct behavior, but I'm not sure")
        self.shouldGroupAccessibilityChildren = true
        
        // Text view cells should not need accessibility traits
        // Accessibility user input labels will be set individually at call site
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
