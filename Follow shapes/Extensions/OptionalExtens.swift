//
//  OptionalExtens.swift
//  Tesme
//
//  Created by Nabeel Nazir on 06/01/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import Foundation
extension Optional {
    var isNone: Bool {
        return self == nil
    }
    var isSome: Bool {
        return self != nil
    }
}
