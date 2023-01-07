//
//  UITableViewExtens.swift
//  Tesme
//
//  Created by Nabeel Nazir on 2/19/21.
//  Copyright © 2021 Asif Razzaq. All rights reserved.
//

import UIKit
private var actionKey: Void?

extension UITableView {
    var refresherAction: (() -> Void)? {
        get {
            return objc_getAssociatedObject(self, &actionKey) as? () -> Void
        }
        set {
            objc_setAssociatedObject(self, &actionKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func setUpRefresherControll(action: @escaping () -> Void) {
        refresherAction = action
        alwaysBounceVertical = true
        let refresher: UIRefreshControl = UIRefreshControl()
//        refresher.tintColor = Colors.PrimaryGreen
        refreshControl = refresher
        refresher.addTarget(self, action: #selector(loadData), for: .valueChanged)
        addSubview(refresher)
    }
    
    @objc private func loadData() {
        refreshControl?.beginRefreshing()
        refresherAction?()
    }
    
    func stopRefresher() {
        refreshControl?.endRefreshing()
    }
}
