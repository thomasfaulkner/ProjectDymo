//
//  MainTableViewDataSource.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/12/23.
//

import UIKit

public protocol UniversalTableViewDataSource: NSObject, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
}
