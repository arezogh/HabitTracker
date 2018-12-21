//
//  Date+String.swift
//  UbaarClient
//
//  Created by iOS Developer on 11/25/17.
//  Copyright © 2017 iOS Developer. All rights reserved.
//

import Foundation

extension Date {
    func toString() -> String {
        return Logger.dateFormatter.string(from: self)
    }
}
