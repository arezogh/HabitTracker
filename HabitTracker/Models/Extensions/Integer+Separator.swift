//
//  Integer+Separator.swift
//  TFI_Taxi
//
//  Created by Mohammad reza Tavakoli bina on 2/12/17.
//  Copyright © 2017 Ali. All rights reserved.
//

import Foundation

struct Number {
    static let formatterWithSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter
    }()
}

extension Int {
    var stringFormattedWithSeparator: String {
        if self > 0 {
            return Number.formatterWithSeparator.string(from: self as NSNumber) ?? ""
        } else if self < 0 {
            let newInt = abs(self)
            return (Number.formatterWithSeparator.string(from: newInt as NSNumber) ?? "") + "-"
        } else {
            return Number.formatterWithSeparator.string(from: self as NSNumber) ?? ""
        }
    }
}

extension String {
    
    func removeSeparators() -> String {
        var finalString = ""
        let components = self.components(separatedBy: ",")
        for component in components {
            finalString += component
        }
        return finalString
    }
    
}






