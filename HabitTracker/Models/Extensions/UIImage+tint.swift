//
//  UIImage+tint.swift
//  SnappBox
//
//  Created by Reza Bina on 10/2/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UIImage {
    func tint(with color: UIColor) -> UIImage {
        var image = withRenderingMode(.alwaysTemplate)
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        color.set()
        
        image.draw(in: CGRect(origin: .zero, size: size))
        image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
