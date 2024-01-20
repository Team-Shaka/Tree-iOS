//
//  UIFont+.swift
//  Tree
//
//  Created by BoMin Lee on 1/20/24.
//

import UIKit

extension UIFont {
    enum FontWeight: String {
        case extraBold
        case bold
        case semiBold
        case medium
        case regular
        case light
        case extraLight
        case thin
        
        var value: String {
            self.rawValue.capitalized
        }
    }
    
    static func pretendard(size: CGFloat, weight: FontWeight = .regular) -> UIFont {
        return UIFont(name: "Pretendard-\(weight.value)", size: size)!
    }
}
