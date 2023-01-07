//
//  UIViewControllerExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 01/01/2021.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import UIKit
import Contacts

@available(iOS 11.0, *)
extension UIViewController {
    /**
    Opens alert view controller having button *settings*, which takes to  settings screen of device to force enable permission
    */
    func showSettingsAlert(title: String, message: String, _ completionHandler: @escaping (_ accessGranted: Bool) -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        if
            let settings = URL(string: UIApplication.openSettingsURLString),
            UIApplication.shared.canOpenURL(settings) {
            alert.addAction(UIAlertAction(title: "Settings", style: .default) { action in
                    completionHandler(false)
                    UIApplication.shared.open(settings)
                })
        }
        present(alert, animated: true)
    }
    
    func showAlertAction(title: String, message : String, actionTitle: String,  onSuccess: @escaping (_ response: Any) -> Void){
        self.view.isUserInteractionEnabled = true
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: nil))
        ac.addAction(UIAlertAction(title: actionTitle, style: .destructive, handler: onSuccess ))
        present(ac, animated: true, completion: nil)
    }
    
//    func showOptionAlertController(title: String, message : String,  onSuccess: @escaping (_ response: Any) -> Void){
//        view.isUserInteractionEnabled = true
//        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        ac.addAction(UIAlertAction(title: LocalizationKeys.no , style: .default, handler: nil ))
//        ac.addAction(UIAlertAction(title: LocalizationKeys.yes, style: .destructive, handler: onSuccess ))
//        present(ac, animated: true, completion: nil)
//    }
    
    func showActionSheet(itemsTuple: [(String, String)], _ completion: @escaping (_ index: Int)-> Void) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        for (index, item) in itemsTuple.enumerated() {
            let image = UIImage(named: item.1)
            let alertAction = UIAlertAction(title: item.0, style: .default) { (action) in
                completion(index)
            }
            alertAction.setValue(image, forKey: "image")
//            alertAction.setValue(CATextLayerAlignmentMode.natural, forKey: "titleTextAlignment")
            optionMenu.addAction(alertAction)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            completion(-1)
        }
        
        optionMenu.addAction(cancelAction)
        
        let subview = optionMenu.view.subviews[0].subviews[0].subviews[0]
        subview.backgroundColor = UIColor.white
        
        present(optionMenu, animated: true, completion: nil)
    }
    
    func getContacts() -> [CNContact] {
        var contacts = [CNContact]()
        let keysToFetch = [CNContactFormatter.descriptorForRequiredKeys(for: .fullName),CNContactPhoneNumbersKey, CNContactEmailAddressesKey,CNContactThumbnailImageDataKey] as? [CNKeyDescriptor]
        let request = CNContactFetchRequest(keysToFetch: keysToFetch!)
        request.sortOrder = CNContactSortOrder.givenName
        let contactStore = CNContactStore()
        do {
            try contactStore.enumerateContacts(with: request) {
                (contact, stop) in
                // Array containing all unified contacts from everywhere
                contacts.append(contact)
            }
        }
        catch {
            print("unable to fetch contacts")
        }
        
        return contacts
    }
    
    func addChildViewController(vc: UIViewController) {
        
        for child in self.children {
            if String(describing: child.classForCoder) == String(describing: vc.classForCoder) {
                child.removeChildViewController()
            }
        }
        
        vc.willMove(toParent: self)
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func removeChildViewController() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
    
    func showAlertController(title: String?, message: String?, actionTitle: String, onSuccess: @escaping (_ response: Any) -> Void){
        view.isUserInteractionEnabled = true
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: actionTitle, style: .default, handler: onSuccess ))
        present(ac, animated: true, completion: nil)
    }
    
    func topMostViewController() -> UIViewController {
        if self.presentedViewController == nil {
            if let tabbarNav = self as? UINavigationController, let visibleController = tabbarNav.visibleViewController {
                return visibleController.topMostViewController()
            } else {
                return self
            }
        }
        if let navigation = self as? UINavigationController {
            return navigation.visibleViewController!.topMostViewController()
        }

        if let tab = self as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController()
            }
            return tab.topMostViewController()
        }
        return self.presentedViewController!.topMostViewController()
    }
    
    func getSafeAreaInsets() -> UIEdgeInsets {
        let window = UIApplication.shared.windows[0]
        return window.safeAreaInsets
    }
    
    @available(iOS 13.0, *)
    var appDelegate: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
}
