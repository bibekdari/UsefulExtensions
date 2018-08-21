//
//  UINavigationBarExtension.swift
//
//  Created by Bibek Timalsina on 11/7/17.
//  Copyright © 2017 Bibek. All rights reserved.
//

import UIKit

extension UINavigationBar {

    static func setAppearance() {
    
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.isTranslucent = false
        navBarAppearance.barTintColor = .red
        navBarAppearance.setBackgroundImage(UIImage(), for: .default)
        navBarAppearance.shadowImage = .blue
        
        let font = UIFont.init(name: "WorkSans-Regular", size: 16) // use UIFontExtension's type safe function here instead
        navBarAppearance.titleTextAttributes = [
              .foregroundColor: .black,
              .font: font
            ]
        navBarAppearance.tintColor = .gray
        
        navBarAppearance.backIndicatorImage = #imageLiteral(resourceName: "back")
        navBarAppearance.backIndicatorTransitionMaskImage = #imageLiteral(resourceName: "back")
        UIBarButtonItem.appearance().setTitleTextAttributes([.font: font], for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([.font: font], for: .disabled)
    }
    
}
