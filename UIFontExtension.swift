//
//  UIFontExtension.swift
//
//  Created by bibek timalsina on 5/26/17.
//  Copyright © 2017 bibek. All rights reserved.
//

import UIKit

protocol FontFace {
    var rawValue: String {get}
}

extension UIFont {

    static func font(_ face: FontFace, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: face.rawValue, size: size)!
    }
    
    enum WorkSans: String, FontFace {
        case regular = "WorkSans-Regular"
        case light = "WorkSans-Light"
        case bold = "WorkSans-Bold"
        case medium = "WorkSans-Medium"
        case black = "WorkSans-Black"
        case extraBold = "WorkSans-ExtraBold"
        case extraLight = "WorkSans-ExtraLight"
        case semiBold = "WorkSans-SemiBold"
        case thin = "WorkSans-Thin"
    }
    
    enum NotoSans: String, FontFace {
        case regular = "NotoSans-Regular"
        case italic = "NotoSans-Italic"
        case boldItalic = "NotoSans-BoldItalic"
        case bold = "NotoSans-Bold"
    }
    
//    static let tabBarItemFont = UIFont(name: FontFace.light.rawValue, size: 10)!
//    static let NavBarTitleFont = UIFont(name: FontFace.regular.rawValue, size: 16)!
    
}
