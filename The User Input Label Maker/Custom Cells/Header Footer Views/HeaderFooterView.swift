//
//  HeaderFooterView.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

class HeaderFooterView: UITableViewHeaderFooterView {
    static let reuseIdentifier: String = "org.pumpkintoss.HeaderFooterView"
    
    // MARK: - Cell Components
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializer
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(containerView)
        containerView.addSubview(label)
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor),
            containerView.topAnchor.constraint(equalTo: contentView.layoutMarginsGuide.topAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor),
            
            label.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            label.topAnchor.constraint(equalTo: containerView.topAnchor),
            label.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
        
        // MARK: Configure Text
        
        // Adjusts either left or right to match localization
        label.textAlignment = .natural
        
        // Setting lines to 0 means "use as many lines as needed"
        label.numberOfLines = 0
        
        // Set font to adjust dynamically with system setting
        label.adjustsFontForContentSizeCategory = true
        
        // Font will be set individually at call site because headers and footers use different fonts
        
        // MARK: Configure Colors
        
        label.textColor = ThemeColorKit.headerFooterTextColor()
        label.backgroundColor = .clear
        containerView.backgroundColor = .clear
        
        // MARK: Configure Accessibility
        
        // Group all header/footer view elements as one accessibility element
        #warning("Double check if this is necessary, I haven't done this before. -- Update, yes, it looks like this is what you should do with all headers; helps with scrolling behavior.")
        self.shouldGroupAccessibilityChildren = true
        
        // Accessibility traits (.header for Header and nothing for Footer) will be set individually at call site
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
