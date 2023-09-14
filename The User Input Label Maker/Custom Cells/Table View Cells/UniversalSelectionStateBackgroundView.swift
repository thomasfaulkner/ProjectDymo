//
//  UniversalSelectionStateBackgroundView.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/14/23.
//

import UIKit

// This is the translucent color overlay that is displayed when a table view cell is selected

class UniversalSelectionStateBackgroundView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        backgroundColor = ThemeColorKit.orangeAccent().withAlphaComponent(0.22)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
