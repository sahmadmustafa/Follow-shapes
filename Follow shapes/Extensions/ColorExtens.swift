//
//  ColorExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 30/12/2020.
//  Copyright © 2020 Asif Razzaq. All rights reserved.
//

import UIKit
extension UIColor{
    
    static var primaryBackgroundColor: UIColor?{
        return hexStringToUIColor(hex: "E31937")
    }
    
    static var PrimaryTextColor: UIColor?{
        return hexStringToUIColor(hex: "1A1717")
    }
    
    static var SepratorColor: UIColor?{
        return hexStringToUIColor(hex: "F0ECED")
    }
    
    static func hexStringToUIColor (hex:String, opacity: CGFloat = 1) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: opacity
        )
    }
}

extension UIColor {
    func as1ptImage() -> UIImage? {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        let ctx = UIGraphicsGetCurrentContext()
        self.setFill()
        ctx?.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
