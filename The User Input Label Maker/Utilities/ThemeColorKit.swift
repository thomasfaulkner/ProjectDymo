//
//  ThemeColorKit.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

struct ThemeColorKit {
    
    // MARK: - Background Colors
    
    static func backgroundColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainBackground") {
            color = assetColor
        }
        
        return color
    }
    
    static func secondaryBackgroundColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainSecondaryBackground") {
            color = assetColor
        }
        
        return color
    }
    
    static func tableBackgroundColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainTableBackground") {
            color = assetColor
        }
        
        return color
    }
    
    static func tableSecondaryBackgroundColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainTableSecondaryBackground") {
            color = assetColor
        }
        
        return color
    }
    
    // MARK: - Text Colors
    
    static func bodyTextColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainBodyText") {
            color = assetColor
        }
        
        return color
    }
    
    static func headerFooterTextColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainHeaderFooterText") {
            color = assetColor
        }
        
        return color
    }
    
    static func placeholderTextColor() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainPlaceholderText") {
            color = assetColor
        }
        
        return color
    }
    
    // MARK: - Misc. Colors
    
    static func tableSeparator() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainTableSeparator") {
            color = assetColor
        }
        
        return color
    }
    
    static func orangeAccent() -> UIColor {
        var color = UIColor()
        
        if let assetColor = UIColor.init(named: "mainOrangeAccent") {
            color = assetColor
        }
        
        return color
    }
}
