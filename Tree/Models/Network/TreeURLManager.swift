//
//  TreeURLManager.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation

enum TreeURLKey: String {
    case baseUrl = "tree"
}

final class TreeURLManager {
    private init() { }
    
    /// Tree URL function
    /// - Parameter key: treeUrlKey
    /// - Returns: URL
    static func url(key: TreeURLKey) -> URL {
        #if DEBUG
        guard let fileUrl = Bundle.main.url(forResource: "url-debug", withExtension: "plist") else { fatalError("DOSEN'T EXIST URL FILE") }
        #else
        guard let fileUrl = Bundle.main.url(forResource: "url", withExtension: "plist") else { fatalError("DOSEN'T EXIST URL FILE") }
        #endif
        guard let urlDictionary = NSDictionary(contentsOf: fileUrl) else { fatalError("DOSEN'T EXIST URL KEY") }
        guard let urlString = urlDictionary[key.rawValue] as? String else { fatalError("COULDN'T CONVERT TO STRING") }
        guard let url = URL(string: urlString) else { fatalError("COULDN'T CREATE URL") }
        
        return url
    }
    
    /// Tree URL Request function
    /// - Parameter key: treeUrlKey
    /// - Returns: URLRequest
    static func urlRequest(key: TreeURLKey) -> URLRequest {
        let url = TreeURLManager.url(key: key)
        return URLRequest(url: url)
    }
}
