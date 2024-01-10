//
//  Dictionary+.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation

extension Dictionary {
    func dictMap<K, V>(_ transform: (_ key: Key,_ value: Value) -> (K, V)) -> [K: V] {
        return Dictionary<K, V>(uniqueKeysWithValues: self.map { transform($0, $1) })
    }
}
