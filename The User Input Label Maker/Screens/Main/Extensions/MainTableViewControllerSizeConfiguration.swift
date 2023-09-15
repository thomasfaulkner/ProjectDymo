//
//  MainTableViewControllerSizeConfiguration.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

extension MainTableViewController {
    // MARK: Configure Size
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 53
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        UITableView.automaticDimension
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 53
    }
}
