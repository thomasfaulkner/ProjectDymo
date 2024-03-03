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
    
    func test_LabelsBundle_WhenQueriedForFormattedArray_ReturnsStringsWithoutWhitespaceAndNewlines() throws {
        // Given
        let sut = ["The     ", "     rain", "in\n", "\nSpain..."]
        
        // When
        let labelsBundle = LabelsBundle(array: sut)
        
        // Then
        let expectedResult = ["The", "rain", "in", "Spain..."]
        XCTAssertEqual(labelsBundle.formattedArray, expectedResult, "Formatted array should trim all whitespace and newlines from stored strings.")
    }
    
    func test_LabelsBundle_WhenQueriedForFormattedArray_ReturnsGivenArrayRemovingEmptyStrings() throws {
        // Given
        let sut = ["", "Hello", "", "world!", ""]
        
        // When
        let labelsBundle = LabelsBundle(array: sut)
        
        // Then
        let expectedResult = ["Hello", "world!"]
        XCTAssertEqual(labelsBundle.formattedArray, expectedResult, "Formatted array should remove any empty strings from the given array.")
    }
    
    func test_StringDictionary_WhenPassedToMakeLabelsBundle_ReturnsLabelsBundleSortedInAscendingOrderByIndexPath() throws {
        // Given
        let sut: [IndexPath: String] = [
            IndexPath(row: 0, section: 1): "rain",
            IndexPath(row: 0, section: 0): "The",
            IndexPath(row: 1, section: 1): "in",
            IndexPath(row: 0, section: 2): "Spain"
        ]
        
        // When
        let labelsBundle = LabelStorageHelpers.makeLabelsBundle(fromStringDictionary: sut)
        
        // Then
        let sortedArray = ["The", "rain", "in", "Spain"]
        let expectedResult = LabelsBundle(array: sortedArray)
        XCTAssertEqual(labelsBundle, expectedResult, "makeLabelsBundle(fromStringDictionary:) should return a LabelsBundle() object containing a string array. The string array should be sorted in ascending order by each string's respective index path passed in from the dictionary parameter.")
    }
    
    func test_EmptyStringDictionary_WhenPassedToMakeLabelsBundle_ReturnsLabelsBundleWithEmptyStringDictionary() throws {
        // Given
        let sut: [IndexPath: String] = [:]
        
        // When
        let labelsBundle = LabelStorageHelpers.makeLabelsBundle(fromStringDictionary: sut)
        
        // Then
        XCTAssertEqual(labelsBundle, LabelsBundle(array: [String]()), "When passed an empty string dictionary, makeLabelsBundle(fromDictionary:) should return a LabelsBundle() object with an empty string array.")
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
