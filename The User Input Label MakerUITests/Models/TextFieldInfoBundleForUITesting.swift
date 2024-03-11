//
//  TextFieldInfoForUITesting.swift
//  The User Input Label MakerUITests
//
//  Created by Thomas on 3/11/24.
//

import Foundation
import XCTest

struct TextFieldInfoBundleForUITesting {
    var tableName: String
    var fieldName: String
    
    let app = XCUIApplication()
    
    // Get correct text field via the cell's automation identifier
    var textField: XCUIElement {
        return app.tables[tableName].textFields[fieldName]
    }
    
    var textFieldContents: String {
        return textField.value as! String
    }
}
