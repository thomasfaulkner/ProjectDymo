//
//  ButtonOrSegmentedControlTableViewControllerHeadersAndFooters.swift
//  The User Input Label Maker
//
//  Created by Thomas Faulkner on 9/15/23.
//

import Foundation
import UIKit

extension ButtonOrSegmentedControlTableViewController {
    // MARK: Configure Header/Footer Views
     
     override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         return nil
     }
     
     override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
         guard let headerFooterView = tableView.dequeueReusableHeaderFooterView(withIdentifier: HeaderFooterView.reuseIdentifier) as? HeaderFooterView else { return nil }
         
         // Configure font
         headerFooterView.label.font = FontKit.footerText()
         
         // Configure text content of footer views
         switch section {
         case 0:
             headerFooterView.label.text = "If there is text alongside a label (\"❤️ Favorite\"), choose Text."
         default:
             return nil
         }
         
         // Configure accessibility labels
         switch section {
         case 0:
             headerFooterView.accessibilityLabel = "If there is text alongside a label such as \"❤️ Favorite\", choose Text."
         default:
             return nil
         }
         
         // No accessibility traits to configure for footers
         
         return headerFooterView
     }
}
