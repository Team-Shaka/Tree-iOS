//
//  User.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation

struct User: Codable {
    let userId: Int
    let accessToken: String
    let refreshToken: String
}
