//
//  String + Date.swift
//  SnappBox
//
//  Created by Reza Bina on 9/30/18.
//  Copyright © 2018 iOS Developer. All rights reserved.
//

import Foundation

extension String {
    
    func convertToDateTime() -> String? {
        let dfmatter = DateFormatter()
        dfmatter.dateFormat="yyyy-MM-dd HH:mm:ss"
        if let date = dfmatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd MMM yyyy - HH:mm"
            dateFormatter.locale = Locale(identifier: "fa_IR")
            dateFormatter.calendar = Calendar(identifier: .persian)
            return dateFormatter.string(from: date)
        } else {
            return nil
        }
    }
    
    func convertToDate() -> String? {
        let dfmatter = DateFormatter()
        dfmatter.dateFormat="yyyy-MM-dd HH:mm:ss"
        if let date = dfmatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd MMM"
            dateFormatter.locale = Locale(identifier: "fa_IR")
            dateFormatter.calendar = Calendar(identifier: .persian)
            return dateFormatter.string(from: date)
        } else {
            return nil
        }
    }
    
    func convertToTime() -> String? {
        let dfmatter = DateFormatter()
        dfmatter.dateFormat="yyyy-MM-dd HH:mm:ss"
        if let date = dfmatter.date(from: self) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            dateFormatter.locale = Locale(identifier: "fa_IR")
            dateFormatter.calendar = Calendar(identifier: .persian)
            return dateFormatter.string(from: date)
        } else {
            return nil
        }
    }
    
}
