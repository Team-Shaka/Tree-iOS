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
    var user: User?
}

extension TreeNetworkManager {
    func fetchInvitations(completion: @escaping (_ value: InvitationData?, _ error: Error?) -> Void) {
        let url = TreeURLContainer.url(key: .baseUrl)
//        guard let userId =
    }
}
