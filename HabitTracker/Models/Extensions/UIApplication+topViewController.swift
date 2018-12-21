//
//  UIApplication+topViewController.swift
//  SnappBox
//
//  Created by Reza Bina on 9/1/18.
//  Copyright © 2018 Objective Computations. All rights reserved.
//

import UIKit

extension UIApplication {
    
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return topViewController(controller: selected)
            }
        }
        
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        
        return controller
    }
    
    class func closeAllPresentedViewController(completion : @escaping () -> Void) {
        let root = UIApplication.shared.keyWindow?.rootViewController
        if (root?.presentedViewController) != nil {
            root?.dismiss(animated: true, completion: {
                completion()
            })
        } else {
            completion()
        }
    }
    
}
