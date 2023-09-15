//
//  MainTableViewController.swift
//  The User Input Label Maker
//
//  Created by Thomas on 8/26/23.
//

import UIKit

class MainTableViewController: UniversalTableViewController {
    
    let dataSource = MainTableViewDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "User Input Label Maker"
        backButtonText = "Label Maker"
        
        // MARK: Configure Table View
        
        // Configure table view data source
        tableView.dataSource = dataSource
        
        // Register cells and header/footer views
        CellRegistrationHelpers.registerCellsAndViews(forTableView: tableView, withCellViewTypes: [.disclosure, .headerFooterView])
    }
    
    // MARK: - Table View Delegate
    
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
    
    // MARK: Configure Header/Footer View
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        // All that's left to configure here is text content, font, accessibility labels, and accessibility traits.
        
        guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
        
        // Configure font
        headerFooterView.label.font = FontKit.headerText()
        
        // Configure text content of header views
        switch section {
        case 0:
            headerFooterView.label.text = "\nCONTROL TYPE"
        case 1:
            headerFooterView.label.text = "LEARN"
        default:
            return nil
        }
        
        // Configure accessibility labels
        switch section {
        case 0:
            headerFooterView.accessibilityLabel = "Control Type"
        case 1:
            headerFooterView.accessibilityLabel = "Learn"
        default:
            return nil
        }
        
        // Configure accessibility traits
        headerFooterView.label.accessibilityTraits = [.header]
        
        return headerFooterView
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        // All that's left to configure here is text content, font, and accessibility traits.
        
        #warning("This is currently placeholder incase I add a footer on the main screen — can leave empty or delete (?) if one is never added.")
        
        return nil
    }
    
    // MARK: Configure Selection
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        // All cells are selectable, so return indexPath for everything. If this changes, return nil for that indexPath.
        return indexPath
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        #warning("Still working on this")
        
        // Push to new TableViewControllers using show(_:, sender:)
        
        switch indexPath.section {
        case 0: // Section 0: "CONTROL TYPE"
            switch indexPath.row {
            case 0:
                let vc = ButtonOrSegmentedControlTableViewController()
                show(vc, sender: self)
            default:
                return
            }
        case 1: // Section 1: "LEARN"
            // There's only one row in this section, so no indexPath.row switch needed currently
            #warning("Incomplete")
            return
        default:
            return
        }
        return
    }
}

