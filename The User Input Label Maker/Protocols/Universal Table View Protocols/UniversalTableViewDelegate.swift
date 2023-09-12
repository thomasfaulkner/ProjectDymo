//
//  MainTableViewDelegate.swift
//  The User Input Label Maker
//
//  Created by Thomas on 9/12/23.
//

import UIKit

public protocol UniversalTableViewDelegate: NSObject, UITableViewDelegate {
    
    // MARK: - Configure Size
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat
    
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat
    
    // MARK: - Configure Headers and Footers
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView?
}
