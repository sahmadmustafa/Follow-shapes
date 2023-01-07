//
//  UIImageViewExtens.swift
//  Tesme
//
//  Created by Nabeel Nazir on 3/17/21.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import UIKit

extension UIImageView {
    func callerBounce(time: Float){
        UIView.animate(withDuration: TimeInterval(time), animations: {
            self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (finished) in
            UIView.animate(withDuration: TimeInterval(time), animations: {
                self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }) { (finihed) in
                UIView.animate(withDuration: TimeInterval(time), animations: {
                    self.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                }) { (finihed) in
                    UIView.animate(withDuration: TimeInterval(time)) {
                        self.transform = .identity
                    }
                }
            }
        }
    }
}
