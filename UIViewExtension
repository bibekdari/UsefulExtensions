//
//  UIViewExtension.swift
//
//  Created by bibek timalsina on 5/25/17.
//  Copyright © 2017 Bibek. All rights reserved.
//
import UIKit

extension UIView {

    // set corner radius
    func set(cornerRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    // set border color
    func set(border: UIColor) {
        self.layer.borderColor = border.cgColor;
    }
    
    // set border width
    func set(borderWidth: CGFloat) {
        self.layer.borderWidth = borderWidth
    }
    
    // set border width and color
    func set(borderWidth width: CGFloat, of color: UIColor) {
        self.set(border: color)
        self.set(borderWidth: width)
    }
    
    // make UIView rounded on left and right side
    func rounded() {
        self.set(cornerRadius: self.frame.height/2)
    }
    
    // set shadow on UIView
    func set(shadowOpacity: Float, radius: CGFloat, color: UIColor, size: CGSize) {
        layer.shadowColor = color.cgColor
        layer.shadowOffset = size
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = radius
    }
    
    // set corner radius to UIView
    func roundCorners(_ corners: CACornerMask, radius: CGFloat) {
        if #available(iOS 11, *) {
            self.layer.cornerRadius = radius
            self.layer.maskedCorners = corners
        } else {
            var cornerMask = UIRectCorner()
            if(corners.contains(.layerMinXMinYCorner)){
                cornerMask.insert(.topLeft)
            }
            if(corners.contains(.layerMaxXMinYCorner)){
                cornerMask.insert(.topRight)
            }
            if(corners.contains(.layerMinXMaxYCorner)){
                cornerMask.insert(.bottomLeft)
            }
            if(corners.contains(.layerMaxXMaxYCorner)){
                cornerMask.insert(.bottomRight)
            }
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: cornerMask, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
   
}
