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
    
    // MARK: - Tests for Text Field Cell and Related Functions
    
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
    
    // MARK: - Tests for LabelsBundle and Related Functions
    
    func test_LabelsBundle_WhenAskedToStoreStringArray_AccuratelyStoresStringArray() throws {
        // Given
        let sut = ["Hello", "world!"]
        
        // When
        let labelsBundle = LabelsBundle(array: sut)
        
        // Then
        XCTAssertEqual(labelsBundle.array, sut, "Array stored in LabelsBundle object should match string array assigned initially.")
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
