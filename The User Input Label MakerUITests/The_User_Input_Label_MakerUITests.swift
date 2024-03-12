//
//  The_User_Input_Label_MakerUITests.swift
//  The User Input Label MakerUITests
//
//  Created by Thomas on 8/26/23.
//

import XCTest

final class The_User_Input_Label_MakerUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    // MARK: - Main TVC UI Tests
    
    func test_ButtonOrSegmentedControl_WhenTapped_LaunchesVC() throws {
        // Given
        /// Launch app
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        // When
        /// Tap button
        app.tables["User Input Label Maker"].cells["Button or Segmented Control"].tap()
        
        // Then
        /// Verify that tapping the button caused the correct VC to be shown
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap,"Button or Segmented Control", errorMessage)
    }
    
    func test_SliderSwitchOrStepper_WhenTapped_LaunchesVC() throws {
        // Given
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        // When
        app.tables["User Input Label Maker"].cells["Slider, Switch, or Stepper"].tap()
        
        // Then
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap, "Slider, Switch, or Stepper", errorMessage)
    }
    
    func test_TextField_WhenTapped_LaunchesVC() throws {
        // Given
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        // When
        app.tables["User Input Label Maker"].cells["Text Field"].tap()
        
        // Then
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap, "Text Field", errorMessage)
    }
    
    func test_UserInputLabelTips_WhenTapped_LaunchesVC() throws {
        // Given
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        // When
        app.tables["User Input Label Maker"].cells["User Input Label Tips"].tap()
        
        // Then
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap, "User Input Label Tips", errorMessage)
    }
    
    // MARK: - Button or Segmented Control TVC UI Tests
    
    // Helper Functions
    func navigateToButtonOrSegmentedControlTVC() {
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        app.tables["User Input Label Maker"].cells["Button or Segmented Control"].tap()
    }
    
    // Core Tests
    func test_Text_WhenTapped_LaunchesVC() throws {
        // Given
        navigateToButtonOrSegmentedControlTVC()
        
        // When
        let app = XCUIApplication()
        app.tables["Button or Segmented Control"].cells["Text"].tap()
        
        // Then
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap, "Text", errorMessage)
    }
    
    func test_SymbolOnly_WhenTapped_LaunchesVC() throws {
        // Given
        navigateToButtonOrSegmentedControlTVC()
        
        // When
        let app = XCUIApplication()
        app.tables["Button or Segmented Control"].cells["Symbol Only"].tap()
        
        // Then
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertEqual(tableIndentifierAfterTap, "Symbol Only", errorMessage)
    }
    
    // MARK: - Text Button TVC UI Tests
    
    // Helper Functions
    func navigateToTextButtonTVC() {
        navigateToButtonOrSegmentedControlTVC()
        
        let app = XCUIApplication()
        app.tables["Button or Segmented Control"].cells["Text"].tap()
    }
    
    // Error Messages
    /// Error message for when text was stored incorrectly in text field
    func textFieldStorageErrorMessage(fieldName: String, sampleText: String, textFieldContents: String) -> String {
        return "Text entered in field \"\(fieldName)\" was not stored correctly.\n- Entered: \(sampleText)\n- Read from field: \(textFieldContents)"
    }
    
    /// Error message for when passing text to Generate Labels produces an unexpected or incorrect formatted label
    func incorrectFormattedLabelErrorMessage(sampleText: String, expectedResult: String, actualResult: String) -> String {
        return "Generate Labels did not produce the expected, correctly-formatted label.\n- Text passed in from text field(s): \(sampleText)\n- Expected label: \(expectedResult)\n- Actual result: \(actualResult)"
    }
    
    // Core Tests
    func test_CheckOutMoreAlbumsField_WhenGivenText_StoresReadableText() throws {
        // Given
        /// Navigate to TextButtonTVC
        navigateToTextButtonTVC()

        // When
        /// Tap on specified text field
        let bundle = TextFieldInfoBundleForUITesting(tableName: "Text", fieldName: "Check Out More Albums")
        
        bundle.textField.tap()
        
        /// Enter sample text into specified text field
        let sampleText = "Hello"
        bundle.textField.typeText(sampleText)
        
        let errorMessage = textFieldStorageErrorMessage(fieldName: bundle.fieldName, sampleText: sampleText, textFieldContents: bundle.textFieldContents)
        
        // Then
        /// Verify that the correct text is readable from the text field
        XCTAssertEqual(bundle.textFieldContents, sampleText, errorMessage)
    }
    
    func test_MoreAlbumsField_WhenGivenText_StoresReadableText() throws {
        // Given
        navigateToTextButtonTVC()
        
        // When
        let bundle = TextFieldInfoBundleForUITesting(tableName: "Text", fieldName: "More Albums")
        
        bundle.textField.tap()
        
        let sampleText = "world!"
        bundle.textField.typeText(sampleText)
        
        let errorMessage = textFieldStorageErrorMessage(fieldName: bundle.fieldName, sampleText: sampleText, textFieldContents: bundle.textFieldContents)
        
        // Then
        XCTAssertEqual(bundle.textFieldContents, sampleText, errorMessage)
    }
    
    func test_TextInCheckOutMoreAlbumsField_WhenPassedToGenerateLabels_ProducesAccurateUserInputLabel() throws {
        // Given
        /// Navigate to TextButtonTVC
        navigateToTextButtonTVC()
        
        /// Tap on specified text field
        let bundle = TextFieldInfoBundleForUITesting(tableName: "Text", fieldName: "Check Out More Albums")
        
        bundle.textField.tap()
        
        /// Enter sample text into specified text field
        let sampleText = "Hello"
        bundle.textField.typeText(sampleText)
        
        // When
        /// Tap "Generate Labels" button cell to pass text from all text fields to GenerateLabelsTVC
        bundle.app.tables[bundle.tableName].cells["Generate Labels"].tap()
        
        // Then
        /// Verify that a correctly formatted array of labels was generated and is readable from the text view in GenerateLabelsTVC
        let textViewContents = bundle.app.tables["Generate Labels"].textViews["Formatted Labels"].value as! String
        
        let expectedResult = "[\"Hello\"]"
        let errorMessage = incorrectFormattedLabelErrorMessage(sampleText: sampleText, expectedResult: expectedResult, actualResult: textViewContents)
        
        XCTAssertEqual(textViewContents, expectedResult, errorMessage)
    }
    
    func test_TextInMoreAlbumsField_WhenPassedToGenerateLabels_ProducesAccurateUserInputLabel() throws {
        // Given
        navigateToTextButtonTVC()
        
        let bundle = TextFieldInfoBundleForUITesting(tableName: "Text", fieldName: "More Albums")
        
        bundle.textField.tap()
        
        let sampleText = "world!"
        bundle.textField.typeText(sampleText)
        
        // When
        bundle.app.tables[bundle.tableName].cells["Generate Labels"].tap()
        
        // Then
        let textViewContents = bundle.app.tables["Generate Labels"].textViews["Formatted Labels"].value as! String
        
        let expectedResult = "[\"world!\"]"
        let errorMessage = incorrectFormattedLabelErrorMessage(sampleText: sampleText, expectedResult: expectedResult, actualResult: textViewContents)
        
        XCTAssertEqual(textViewContents, expectedResult, errorMessage)
    }
    
    func test_TextInAllTextTVCFields_WhenPassedToGenerateLabels_ProducesAccurateUserInputLabel() throws {
        // Given
        /// Navigate to TextButtonTVC
        navigateToTextButtonTVC()
        
        /// Type text in Check Out More Albums field
        let bundle = TextFieldInfoBundleForUITesting(tableName: "Text", fieldName: "Check Out More Albums", secondFieldName: "More Albums")
        
        bundle.textField.tap()
        
        let firstSampleText = "Hello"
        bundle.textField.typeText(firstSampleText)
        
        /// Type text in More Albums field
        bundle.secondTextField?.tap()
        
        let secondSampleText = "world!"
        bundle.secondTextField?.typeText(secondSampleText)
        
        // When
        /// Tap "Generate Labels" button cell to pass text from all text fields to GenerateLabelsTVC
        bundle.app.tables[bundle.tableName].cells["Generate Labels"].tap()
        
        // Then
        /// Verify that a correctly formatted array of labels was generated and is readable from the text view in GenerateLabelsTVC
        let textViewContents = bundle.app.tables["Generate Labels"].textViews["Formatted Labels"].value as! String
        
        let expectedResult = "[\"Hello\", \"world!\"]"
        let errorMessage = incorrectFormattedLabelErrorMessage(sampleText: "\"Hello\", \"world!\"", expectedResult: expectedResult, actualResult: textViewContents)
        
        XCTAssertEqual(textViewContents, expectedResult, errorMessage)
    }
    
    // MARK: - Launch Performance test, to be reenabled as needed
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
