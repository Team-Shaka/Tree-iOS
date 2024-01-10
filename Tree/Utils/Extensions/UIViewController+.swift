//
//  UIViewController+.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import UIKit

extension UIViewController {
    func addSwipeGestureToDismiss() {
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
        swipeGesture.direction = .right
        self.view.addGestureRecognizer(swipeGesture)
    }
    
    @objc private func handleSwipeGesture(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .right {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    
}
