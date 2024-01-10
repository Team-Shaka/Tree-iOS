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
}
