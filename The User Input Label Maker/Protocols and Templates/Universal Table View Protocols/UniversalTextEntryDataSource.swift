//
//  UniversalTextEntryTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 10/27/23.
//

import UIKit

public protocol UniversalTextEntryDataSource: UniversalTableViewDataSource {
    var textFieldContent: [IndexPath : String] { get set }
}

