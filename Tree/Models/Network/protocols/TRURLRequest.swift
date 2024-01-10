//
//  TRURLRequest.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation
import Alamofire

enum TRHTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

protocol TRPath {
    var path: String { get }
    var available: [TRHTTPMethod] { get }
}

protocol TRQueryKey: Hashable {
    var rawValue: String { get }
}

protocol TRHTTPBodyKey: Hashable {
    var rawValue: String { get }
}

protocol TRURLRequest: URLRequestConvertible {
    associatedtype Path: TRPath
    associatedtype QueryKey: TRQueryKey
    associatedtype HTTPBodyKey: TRHTTPBodyKey
    
    var accessToken: String? { get set }
    var urlRequest: URLRequest { get set }
    var httpMethod: TRHTTPMethod { get set }
    var path: Path  { get set }
    var httpBody: Data?  { get set }
    var query: [String: String]?  { get set }
    var timeoutInterval: TimeInterval  { get set }
    
    init(_accessToken: String?,
         _urlRequest: URLRequest,
         _method: TRHTTPMethod,
         _path: Path,
         _httpBody: Data?,
         _query: [String : String]?,
         _timeoutInterval: TimeInterval)
    
    init?(_ accessToken: String?,
          urlRequest: URLRequest,
          method: TRHTTPMethod,
          path: Path,
          httpBody: [HTTPBodyKey: Any]?,
          query: [QueryKey : String]?,
          timeoutInterval: TimeInterval)
    
    init?(_ accessToken: String?,
          url: URL,
          method: TRHTTPMethod,
          path: Path,
          httpBody: [HTTPBodyKey: Any]?,
          query: [QueryKey : String]?,
          timeoutInterval: TimeInterval)
}

extension TRURLRequest {
    init?(_ accessToken: String?,
          urlRequest: URLRequest,
          method: TRHTTPMethod = .get,
          path: Path,
          httpBody: [HTTPBodyKey: Any]? = nil,
          query: [QueryKey: String]? = nil,
          timeoutInterval: TimeInterval = 10) {
        guard path.available.contains(method) else { return nil }
        var httpBodyData: Data? = nil
        if let httpBody = httpBody {
            let httpBodyDict = httpBody.dictMap({ ($0.rawValue, $1)})
            httpBodyData = try? JSONSerialization.data(withJSONObject: httpBodyDict)
        }
        let query = query?.dictMap({ ($0.rawValue, $1)})
        self.init(_accessToken: accessToken,
                  _urlRequest: urlRequest,
                  _method: method,
                  _path: path,
                  _httpBody: httpBodyData,
                  _query: query,
                  _timeoutInterval: timeoutInterval)
    }
    
    init?(_ accessToken: String?,
          url: URL,
          method: TRHTTPMethod = .get,
          path: Path,
          httpBody: [HTTPBodyKey: Any]? = nil,
          query: [QueryKey : String]? = nil,
          timeoutInterval: TimeInterval = 10) {
        self.init(accessToken,
                  urlRequest: URLRequest(url: url),
                  method: method,
                  path: path,
                  httpBody: httpBody,
                  query: query,
                  timeoutInterval: timeoutInterval)
    }
    
    var queryItem: [URLQueryItem]? {
        return query?.compactMap({ (key: String, value: String) in
            URLQueryItem(name: key, value: value)
        })
    }
    
    /// URLRequestConvertible protocol function
    /// - Returns: URL Request
    public func asURLRequest() throws -> URLRequest {
        var urlRequest = urlRequest
        urlRequest.httpMethod = httpMethod.rawValue
        urlRequest.setValue("application/json",
                            forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/json",
                            forHTTPHeaderField: "Content-Type")
        if let accessToken = accessToken {
            urlRequest.setValue("Bearer \(accessToken)",
                                forHTTPHeaderField: "Authorization")
        }
        
        urlRequest.httpBody = httpBody
        urlRequest.timeoutInterval = timeoutInterval
        urlRequest.url?.append(path: path.path)
        urlRequest.url?.append(queryItems: queryItem ?? [])
        return urlRequest
    }
}


