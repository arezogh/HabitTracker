//
//  UIApplication+rootController.swift
//  SnappBox
//
//  Created by Reza Bina on 8/28/18.
//  Copyright © 2018 Objective Computations. All rights reserved.
//

import Foundation
import UIKit

extension UIApplication {
    
    static public func switchRootViewController(rootViewController: UIViewController, animated: Bool, completion: (() -> Void)?) {
        guard let appDelegate = self.shared.delegate as? AppDelegate else { return }
        guard let window = appDelegate.window else { return }
        if animated {
            UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: {
                let oldState: Bool = UIView.areAnimationsEnabled
                UIView.setAnimationsEnabled(false)
                window.rootViewController = rootViewController
                UIView.setAnimationsEnabled(oldState)
            }, completion: { (finished: Bool) -> () in
                if (completion != nil) {
                    completion!()
                }
            })
        } else {
            window.rootViewController = rootViewController
        }
    }
    
}
