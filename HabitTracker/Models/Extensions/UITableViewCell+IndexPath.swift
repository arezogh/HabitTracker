//
//  UITableViewCell+IndexPath.swift
//  SnappBox
//
//  Created by Reza Bina on 12/19/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    func indexPathForCell() -> IndexPath? {
        if #available(iOS 11.0, *) {
            guard let tableView = self.superview as? UITableView else { return nil }
            guard let indexPath = tableView.indexPath(for: self) else { return nil }
            return indexPath
        } else {
            guard let tableView = self.superview?.superview as? UITableView else { return nil }
            guard let indexPath = tableView.indexPath(for: self) else { return nil }
            return indexPath
        }
    }
    
}
