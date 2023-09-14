//
//  MainTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/12/23.
//

import UIKit

class MainTableViewDataSource: NSObject, UniversalTableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
