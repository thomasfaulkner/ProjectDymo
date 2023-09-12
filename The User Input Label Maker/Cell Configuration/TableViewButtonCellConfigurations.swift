//
//  TableViewButtonCellConfiguration.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

struct TableViewCellContentConfigurations {
    
    // This is the standard configuration for every selectable TableViewCell.
    static func basicButtonCell(withText text: String) -> UIListContentConfiguration {
        var config = UIListContentConfiguration.cell()
        
        config.text = text
        config.textProperties.font = FontKit.bodyTextMedium()
        config.textProperties.color = ThemeColorKit.bodyTextColor()
        
        return config
    }
    
    // This configuration is only for non-interactive text cells; pretty much only for cells in User Input Label Tips.
    static func basicTextOnlyCell(withText text: String) -> UIListContentConfiguration {
        var config = UIListContentConfiguration.cell()
        
        config.text = text
        config.textProperties.font = FontKit.bodyTextRegular()
        config.textProperties.color = ThemeColorKit.bodyTextColor()
        
        return config
    }
}
