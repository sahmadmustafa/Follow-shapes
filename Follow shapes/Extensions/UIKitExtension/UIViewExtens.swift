//
//  UIViewExtens.swift
//  Tesme
//
//  Created by Asif Razzaq on 30/12/2020.
//  Copyright © 2020 Asif Razzaq. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 11.0, *)
extension UIView{
    
    func layoutIfNeededWithAnimation(duration: TimeInterval?){
        UIView.animate(withDuration: duration ?? 0.3) {
            self.layoutIfNeeded()
        }
    }
    
    func getConstriant(identifier: String) -> NSLayoutConstraint?{
        for constraint in self.constraints {
            if constraint.identifier == identifier{
                return constraint
            }
        }
        return nil
    }
    
    func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var circle: Bool{
        get{
            return false
        }
        set{
            if newValue{
                layer.cornerRadius = frame.width*0.5
                layer.masksToBounds = true
            }
            
        }
    }
    
    // MARK: - Shadow
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
    
    func fadeIn(duration: TimeInterval = 0.3, isWithInStackView: Bool = false){
        guard isWithInStackView else {
        UIView.animate(withDuration: duration) {
            self.alpha = 1
            }
            return
        }
        
        UIView.animate(withDuration: duration) {
            self.isHidden = false
        }
        
        
    }
    
    func fadeOut(duration: TimeInterval = 0.3, isWithInStackView: Bool = false){
        
        guard isWithInStackView else {
            UIView.animate(withDuration: duration) {
                self.alpha = 0
            }
            return
        }
        
        UIView.animate(withDuration: duration) {
            self.isHidden = true
        }
    }
    
    /// Adds shadow to view, sets shadowOpacity to 0.16, set shadowOffer to CGSize(width: 0, height: 3) and radius to 3.
    func dropShadow(scale: Bool = true , color: CGColor? = UIColor(named: "DisableButtonText")?.cgColor, shadowRadius: CGFloat = 4, shadowOffset: CGSize = CGSize(width: 1, height: 2)) {
        layer.masksToBounds = false
        layer.shadowColor = color
        layer.shadowOpacity = 0.25
        layer.shadowOffset = shadowOffset
        layer.shadowRadius = shadowRadius
    }
    
    //Responsible to load NibFiles
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
    
    
    
    /**
     Adds seperator View at the bottom of view passed as parameter
     - Parameter navbarParentView: `UIView` the parent view in which you want to add seperator view
     */
    func addSepView(color: UIColor? = UIColor.SepratorColor, height: CGFloat = 1) {
        let sepView = UIView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: height))
        self.addSubview(sepView)
        
        sepView.backgroundColor = color
        
        sepView.translatesAutoresizingMaskIntoConstraints = false
        sepView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        sepView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        sepView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        sepView.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    /**
     To get parent view controller of view
     */
    var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    
    func roundTopCorners() {
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.maskedCorners = [.layerMinXMinYCorner,.layerMaxXMinYCorner]
    }
    
    func roundBottomCorners() {
        clipsToBounds = true
        layer.cornerRadius = 10
        layer.maskedCorners = [.layerMinXMaxYCorner,.layerMaxXMaxYCorner]
    }
    
    func resetCorners() {
        clipsToBounds = false
        layer.cornerRadius = 0
        layer.maskedCorners = []
    }
    
    func addDashedBorder() {
//        let color = Colors.PrimaryGreen?.cgColor
        
        for layer in layer.sublayers ?? [CALayer]() {
            if layer.name == "DashedLayer" {
                 layer.removeFromSuperlayer()
            }
        }
        
        let shapeLayer:CAShapeLayer = CAShapeLayer()
        let frameSize = self.frame.size
        let shapeRect = CGRect(x: 0, y: 0, width: frameSize.width, height: frameSize.height)
        shapeLayer.name = "DashedLayer"
        shapeLayer.bounds = shapeRect
        shapeLayer.position = CGPoint(x: frameSize.width/2, y: frameSize.height/2)
//        shapeLayer.strokeColor = UIColor.black
        
        shapeLayer.lineWidth = 1
        shapeLayer.fillColor = nil
        shapeLayer.lineJoin = CAShapeLayerLineJoin.round
        shapeLayer.lineDashPattern = [2,3]
        shapeLayer.path = UIBezierPath(roundedRect: shapeRect, cornerRadius: 6).cgPath
        
        layer.addSublayer(shapeLayer)
    }
    
    func addEmptyPlaceHolder(image: String, text: String, fontSize: CGFloat = 16, font: UIFont? = UIFont.HKGrotesk) {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.axis = .vertical
        stackView.spacing = 20
//        stackView.tag = Constants.EMPTY_PLACEHOLDER_TAG
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalToSystemSpacingAfter: centerXAnchor, multiplier: 1).isActive = true
        stackView.centerYAnchor.constraint(equalToSystemSpacingBelow: centerYAnchor, multiplier: 1).isActive = true
        
        stackView.addArrangedSubview(UIImageView(image: UIImage(named: image)))
        
        let label = UILabel()
        label.text = text
        label.font = font?.withSize(fontSize)
        label.numberOfLines = 0
//        label.textColor = Colors.SecondaryTextColor
        
        stackView.addArrangedSubview(label)
    }
    
    func RemoveView(with tag: Int) {
        for subview in subviews {
            if subview.tag == tag {
                subview.removeFromSuperview()
                return
            }
        }
    }
}
