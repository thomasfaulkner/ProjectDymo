//
//  NavigationBarConfiguration.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/11/23.
//

import Foundation
import UIKit

struct NavigationBarConfigurationHelpers {
    
    // Call this configuration on every Table View Controller.
    static func configureNavigationBar(_ navigationBar: UINavigationBar) {
        
        // Configure navigation bar background appearance (opaque/translucent), background color,  and title text attributes
        func universalNavigationBarAppearance() -> UINavigationBarAppearance {
            let navigationBarTitleAttributes: [NSAttributedString.Key: Any] = [
                NSAttributedString.Key.foregroundColor: ThemeColorKit.bodyTextColor(),
                NSAttributedString.Key.font: FontKit.navigationBarTitle()
            ]
            
            let appearance = UINavigationBarAppearance()
            appearance.configureWithDefaultBackground()
            appearance.backgroundColor = ThemeColorKit.backgroundColor()
            appearance.titleTextAttributes = navigationBarTitleAttributes
            
            return appearance
        }
        
        // Configure color used for navigation bar buttons (I think?)
        navigationBar.tintColor = ThemeColorKit.orangeAccent()
        
        // Configure custom symbol for back indicator
        navigationBar.backIndicatorImage = SFSymbolKit.leftChevron()
        navigationBar.backIndicatorTransitionMaskImage = SFSymbolKit.leftChevron()
        
        // Set universal navigation bar appearance described in function above to all appearances
        navigationBar.standardAppearance = universalNavigationBarAppearance()
        navigationBar.scrollEdgeAppearance = universalNavigationBarAppearance()
        navigationBar.compactAppearance = universalNavigationBarAppearance()
    }
    
    // Configure back button title and title attributes (the one displayed on the second screen the first one pushes to, next to the back button, e.g. "< Settings")
    
    /// This configuration only needs to be called on parent Table View Controllers, as the final child branch won't have a back button title to configure.
    
    static func configureParentBackButtonNavigationItem(_ navigationItem: UINavigationItem, withBackButtonText backButtonText: String) {
        let backButtonItem = UIBarButtonItem(title: "\(backButtonText)", style: .plain, target: self, action: nil)
        
        backButtonItem.setTitleTextAttributes([NSAttributedString.Key.font: FontKit.navigationBarBackButtonTitle()], for: .normal)
        
        navigationItem.backBarButtonItem = backButtonItem
    }
}
