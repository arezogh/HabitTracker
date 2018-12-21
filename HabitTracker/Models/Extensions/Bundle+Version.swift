//
//  Bundle+Version.swift
//  Achare
//
//  Created by iOS Developer on 8/2/17.
//  Copyright © 2017 Mohammad reza Tavakoli. All rights reserved.
//

import Foundation

extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
