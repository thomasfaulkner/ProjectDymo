//
//  The_User_Input_Label_MakerTests.swift
//  The User Input Label MakerTests
//
//  Created by Thomas on 8/26/23.
//

import XCTest
@testable import The_User_Input_Label_Maker

final class The_User_Input_Label_MakerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_TextFieldCell_WhenAssignedText_StoresAccurateText() throws {
        // Given
        let sut = TextFieldTableViewCell()
        
        // When
        sut.textField.text = "Sample text"
        
        // Then
        XCTAssertEqual(sut.textField.text, "Sample text", "Text field text should match text assigned initially.")
    }
    
    func test_TextFieldCell_WhenQueriedByTextFromField_ReturnsCorrectString() throws {
        // Given
        let sut = TextFieldTableViewCell()
        sut.textField.text = "Sample text"
        
        // When
        let textFieldContents = LabelStorageHelpers.textFromField(inCell: sut)!
        
        // Then
        XCTAssertEqual(textFieldContents, "Sample text", "Text retrieved by textFromField(inCell:) should match text assigned initially.")
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
