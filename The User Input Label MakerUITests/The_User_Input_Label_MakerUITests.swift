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

    func testButtonOrSegmentedControlLaunchesVC() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        app.tables["User Input Label Maker"].cells["Button or Segmented Control"].tap()
        
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertTrue(tableIndentifierAfterTap == "Button or Segmented Control", errorMessage)
    }
    
    func testSliderSwitchOrStepperLaunchesVC() throws {
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        app.tables["User Input Label Maker"].cells["Slider, Switch, or Stepper"].tap()
        
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertTrue(tableIndentifierAfterTap == "Slider, Switch, or Stepper", errorMessage)
    }
    
    func testTextFieldLaunchesVC() throws {
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        app.tables["User Input Label Maker"].cells["Text Field"].tap()
        
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertTrue(tableIndentifierAfterTap == "Text Field", errorMessage)
    }
    
    func testUserInputLabelTipsLaunchesVC() throws {
        let app = XCUIApplication()
        app.launchArguments = ["enable-testing"]
        app.launch()
        
        app.tables["User Input Label Maker"].cells["User Input Label Tips"].tap()
        
        let tableIndentifierAfterTap = app.tables.firstMatch.identifier
        let errorMessage = "AX Identifier for table view shown after tapping was \(tableIndentifierAfterTap)"
        
        XCTAssertTrue(tableIndentifierAfterTap == "User Input Label Tips", errorMessage)
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
