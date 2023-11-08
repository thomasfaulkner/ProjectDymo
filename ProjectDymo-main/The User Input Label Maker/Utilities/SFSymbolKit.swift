//
//  SFSymbolKit.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

struct SFSymbolKit {
    static let largeImageConfig = UIImage.SymbolConfiguration(scale: UIImage.SymbolScale.large)
    static let boldConfig = UIImage.SymbolConfiguration(weight: .bold)
    
    static let boldLargeScaleConfig = largeImageConfig.applying(boldConfig)
    
    static func leftChevron() -> UIImage {
        var image = UIImage()
        
        // Leaving this as a force unwrap because I want to know if the systemName ever changes.
        image = UIImage(systemName: "chevron.left")!.withConfiguration(boldLargeScaleConfig)
        
        return image
    }
}
