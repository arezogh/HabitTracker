//
//  String+Regex.swift
//  SnappBox
//
//  Created by Reza Bina on 8/28/18.
//  Copyright © 2018 Objective Computations. All rights reserved.
//

import Foundation

extension String {
    func isValid(regex : String) -> Bool {
        let Format = regex
        let Predicate = NSPredicate(format:"SELF MATCHES %@", Format)
        return Predicate.evaluate(with: self)
    }
}
