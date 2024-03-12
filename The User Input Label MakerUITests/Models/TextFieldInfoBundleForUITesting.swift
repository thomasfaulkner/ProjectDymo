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
    var secondFieldName: String?
    var thirdFieldName: String?
    
    let app = XCUIApplication()
    
    // Get specified text field via the cell's automation identifier
    var textField: XCUIElement {
        return app.tables[tableName].textFields[fieldName]
    }
    
    var secondTextField: XCUIElement? {
        guard let secondFieldName = secondFieldName else { return nil }
        return app.tables[tableName].textFields[secondFieldName]
    }
    
    var thirdTextField: XCUIElement? {
        guard let thirdFieldName = thirdFieldName else { return nil }
        return app.tables[tableName].textFields[thirdFieldName]
    }
    
    // Get the contents of a specified text field
    var textFieldContents: String {
        return textField.value as! String
    }
    
    var secondTextFieldContents: String? {
        guard let secondTextField = secondTextField else { return nil }
        return (secondTextField.value as! String)
    }
    
    var thirdTextFieldContents: String? {
        guard let thirdTextField = thirdTextField else { return nil }
        return (thirdTextField.value as! String)
    }
}
