//
//  TreeImageCollection.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import UIKit

final class TreeImageCollection {
    private init() { }
    
    static let like: UIImage = #imageLiteral(resourceName: "like")
    static let likeFill: UIImage = #imageLiteral(resourceName: "like_fill")
    
    static let moreGreen: UIImage = #imageLiteral(resourceName: "more_horizontal_green")
    static let more: UIImage = #imageLiteral(resourceName: "more_horizontal")
    
    static let pictureGreen: UIImage = #imageLiteral(resourceName: "picture_green")
    
    static let settingGray: UIImage = #imageLiteral(resourceName: "setting_gray")
    static let settingGreen: UIImage = #imageLiteral(resourceName: "setting_green")
    
    static let treeGray: UIImage = #imageLiteral(resourceName: "tree_gray")
    static let treeGreen: UIImage = #imageLiteral(resourceName: "tree_green")
    
    final class Arrow {
        private init() { }
        static let downRight: UIImage = #imageLiteral(resourceName: "arrow_down_right")
        static let rightGreen: UIImage = #imageLiteral(resourceName: "arrow_right_green")
        static let right: UIImage = #imageLiteral(resourceName: "arrow_right")
    }
    
    final class Branch {
        private init() { }
        static let gray: UIImage = #imageLiteral(resourceName: "branch_gray")
        static let green: UIImage = #imageLiteral(resourceName: "branch_green")
        static let white: UIImage = #imageLiteral(resourceName: "branch_white")
        static let plus: UIImage = #imageLiteral(resourceName: "branch_plus")
    }
    
    final class Chevron {
        private init() { }
        static let down: UIImage = #imageLiteral(resourceName: "chevron_down")
        static let left: UIImage = #imageLiteral(resourceName: "chevron_left")
        static let right: UIImage = #imageLiteral(resourceName: "chevron_right")
    }
    
}
