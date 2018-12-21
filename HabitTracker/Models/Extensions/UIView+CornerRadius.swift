//
//  UIView+CornerRadius.swift
//  SnappBox
//
//  Created by Reza Bina on 12/10/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
