//
//  TreeNetworkResult.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation

struct TreeNetworkResult<T: Codable>: Codable {
    let isSuccess: Bool
    let code: String
    let message: String
    let createdAt: Date
    let result: T?
    
    enum CodingKeys: String, CodingKey {
        case isSuccess
        case code
        case message
        case createdAt = "created_at"
        case result
    }
}
