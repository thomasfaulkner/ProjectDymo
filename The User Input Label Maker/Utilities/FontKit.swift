//
//  FontKit.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

struct FontKit {
    
    // MARK: - Rounded Font Maker
    
    static func roundedFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: weight)
        let font: UIFont
        
        if #available(iOS 13.0, *) {
            if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
                font = UIFont(descriptor: descriptor, size: fontSize)
            } else {
                font = systemFont
            }
        } else {
            font = systemFont
        }
        
        return font
    }
    
    // MARK: - Commonly Used Fonts
    
    
    // Unsure if Navigation Controllers can take a UIFontMetrics scaling font — may just have to assign text and attributes using roundedFont(ofSize:). They might handle it automatically by disabling scaling in Navigation Bars.
    
    static func navigationBarTitle() -> UIFont {
        var font = UIFont()

        font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: FontKit.roundedFont(ofSize: 20, weight: .bold))

        return font
    }
    
    static func navigationBarBackButtonTitle() -> UIFont {
        var font = UIFont()
        
        font = UIFontMetrics(forTextStyle: .title1).scaledFont(for: FontKit.roundedFont(ofSize: 18, weight: .medium))
        
        return font
    }
    
    // Typically, use bodyTextMedium. Use bodyTextRegular for extended prose in User Input Label Tips.
    
    static func bodyTextRegular() -> UIFont {
        var font = UIFont()
        
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontKit.roundedFont(ofSize: 17, weight: .medium))
        
        return font
    }
    
    static func bodyTextMedium() -> UIFont {
        var font = UIFont()
        
        font = UIFontMetrics(forTextStyle: .body).scaledFont(for: FontKit.roundedFont(ofSize: 17, weight: .medium))
        
        return font
    }
    
//    static func headerText() -> UIFont {
//        var font = UIFont()
//        
//        font = UIFontMetrics(forTextStyle: .subheadline).scaledFont(for: FontKit.roundedFont(ofSize: 15, weight: .regular))
//        
//        return font
//    }
    
    static func headerFooterText() -> UIFont {
        var font = UIFont()
        
        font = UIFontMetrics(forTextStyle: .footnote).scaledFont(for: FontKit.roundedFont(ofSize: 14, weight: .regular))
        
        return font
    }
    
}
