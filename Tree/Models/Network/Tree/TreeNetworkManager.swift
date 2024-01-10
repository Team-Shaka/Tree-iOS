//
//  TreeNetworkManager.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation
import Alamofire

final class TreeNetworkManager: TRNetworkManager {
    static let shared: TreeNetworkManager = TreeNetworkManager()
    private init() { }
    
    @UserDefaultWrapper(key: .member, defaultValue: nil)
    var member: Member?
}

extension TreeNetworkManager {
    
}
