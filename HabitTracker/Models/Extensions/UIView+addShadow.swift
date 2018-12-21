//
//  UIView+addShadow.swift
//  SnappBox
//
//  Created by Reza Bina on 11/21/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UIView {
    func addshadow(top: Bool,
                   left: Bool,
                   bottom: Bool,
                   right: Bool,
                   shadowRadius: CGFloat = 5.0) {
        
        self.layer.masksToBounds = false
        self.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = 1.0
        self.layer.shadowColor = UIColor.black.withAlphaComponent(0.16).cgColor
        
        let path = UIBezierPath()
        var x: CGFloat = 0
        var y: CGFloat = 0
        var viewWidth = self.frame.width
        var viewHeight = self.frame.height
        
        if (!top) { y+=(shadowRadius+1) }
        if (!bottom) { viewHeight-=(shadowRadius+1) }
        if (!left) { x+=(shadowRadius+1) }
        if (!right) { viewWidth-=(shadowRadius+1) }
        
        path.move(to: CGPoint(x: x, y: y))
        path.addLine(to: CGPoint(x: x, y: viewHeight))
        path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
        path.addLine(to: CGPoint(x: viewWidth, y: y))
        path.close()
        self.layer.shadowPath = path.cgPath
    }
}
