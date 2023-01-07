//
//  NSMutableAttributedStringExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 01/01/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import Foundation
extension NSMutableAttributedString {
    func range(string: String? = "") -> NSRange {
        (self.string as NSString).range(of: string!)
    }
}
