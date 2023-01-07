//
//  NavigationControllerExten.swift
//  Tesme
//
//  Created by Asif Razzaq on 22/01/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import UIKit


extension UINavigationController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = nil
    }
}
