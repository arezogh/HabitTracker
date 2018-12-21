//
//  UIView+topInset.swift
//  SnappBox
//
//  Created by Reza Bina on 9/15/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UIView {
    
    var safeTopInset: CGFloat {
        if #available(iOS 11.0, *) {
            return (UIApplication.shared.keyWindow?.safeAreaInsets.top ?? 0.0) == 0.0 ? 0.0 : 22.0
        } else {
            return 0.0
        }
    }
    
}
