//
//  NSObjectExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 30/12/2020.
//  Copyright © 2020 Asif Razzaq. All rights reserved.
//

import Foundation
extension NSObject {
    /// generates string for any class.
    class var className: String {
        return String(describing: self.self)
    }
}
