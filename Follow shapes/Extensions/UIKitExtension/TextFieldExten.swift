//
//  TextFieldExten.swift
//  Tesme
//
//  Created by Nabeel Nazir on 12/02/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import UIKit

extension UITextField {
    private func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: frame.size.height))
        leftView = paddingView
        leftViewMode = .always
    }
    
    private func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: frame.size.height))
        rightView = paddingView
        rightViewMode = .always
    }
    
    func setPaddingToTextField(_ amount: CGFloat? = 20) {
        setLeftPaddingPoints(amount!)
        setRightPaddingPoints(amount!)
    }
}
