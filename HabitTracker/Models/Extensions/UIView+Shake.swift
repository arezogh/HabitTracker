//
//  UIView+Shake.swift
//  Achare
//
//  Created by iOS Developer on 7/15/17.
//  Copyright © 2017 Mohammad reza Tavakoli. All rights reserved.
//

import UIKit

extension UIView {
    func shake() {
        self.transform = CGAffineTransform(translationX: 20, y: 0)
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 1, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.identity
        }, completion: nil)
    }
}
