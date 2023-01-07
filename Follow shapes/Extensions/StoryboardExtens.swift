//
//  StoryboardExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 04/01/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import Foundation
import UIKit
extension UIStoryboard{
    func initiate<T: UIViewController>() -> T?{
        return self.instantiateViewController(withIdentifier: T.className) as? T
    }
    
    static func initiate<T: UIViewController>(storyboard: Storyboard) -> T?{
        
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: T.className) as? T
    }
    
    enum Storyboard: String{
        case main = "Main"
        case people = "Trip"
        case register = "Login"
    }
}
