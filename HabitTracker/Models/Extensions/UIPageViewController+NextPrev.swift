//
//  UIPageViewController+NextPrev.swift
//  SnappBox
//
//  Created by Reza Bina on 12/17/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import UIKit

extension UIPageViewController {
    
    func goToNextPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
        if let currentViewController = viewControllers?.first {
            if let nextPage = dataSource?.pageViewController(self, viewControllerAfter: currentViewController) {
                setViewControllers([nextPage], direction: .forward, animated: animated, completion: completion)
            }
        }
    }
    
    func goToPrevPage(animated: Bool = true, completion: ((Bool) -> Void)? = nil) {
        if let currentViewController = viewControllers?.last {
            if let prevPage = dataSource?.pageViewController(self, viewControllerBefore: currentViewController) {
                setViewControllers([prevPage], direction: .reverse, animated: animated, completion: completion)
            }
        }
    }
    
}
