//
//  UIView+DashLine.swift
//  SnappBox
//
//  Created by Reza Bina on 10/2/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

public let kShapeDashed : String = "kShapeDashed"

extension UIView {
    
    func addDashedBorder(cornerRadius: CGFloat, color: UIColor) {
        let color = color.cgColor
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        let frameSize = self.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.strokeColor = color
        shapeLayer.lineWidth = 0.5
        shapeLayer.cornerRadius = cornerRadius
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [2,2]
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: cornerRadius).cgPath
        self.layer.addSublayer(shapeLayer)
        
        //Create a CAShapeLayer
//        let shapeLayer = CAShapeLayer()
//        shapeLayer.strokeColor = UIColor.SNPColors.darkBlue.cgColor
//        shapeLayer.lineWidth = 2
//        // passing an array with the values [2,3] sets a dash pattern that alternates between a 2-user-space-unit-long painted segment and a 3-user-space-unit-long unpainted segment
//        shapeLayer.lineDashPattern = [2,3]
//
//        let path = CGMutablePath()
//        path.addLines(between: [CGPoint(x: 0, y: 0), CGPoint(x: self.frame.width, y: 0)])
//        shapeLayer.path = path
//        layer.addSublayer(shapeLayer)
    }
    
}
