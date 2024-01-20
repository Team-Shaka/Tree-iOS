//
//  InvitationData.swift
//  Tree
//
//  Created by BoMin Lee on 1/20/24.
//

import Foundation

struct InvitationData: Codable {
    let invitationId: Int
    let treeName: Int
    let senderName: String
    let treeSize: Int
    let treeMemberProfileImages: [String]
}
