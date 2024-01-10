//
//  TRNetworkManager.swift
//  Tree
//
//  Created by BoMin Lee on 1/10/24.
//

import Foundation
import Alamofire

protocol TRNetworkManager {
    func response<D: Codable>(_ briefingURLRequest: any TRURLRequest,
                              type: D.Type,
                              completion: @escaping (_ value: D?, _ error: Error?) -> Void)
    
    func response(_ treeURLRequest: any TRURLRequest,
                  completion: @escaping (_ value: Data?, _ error: Error?) -> Void)
}

extension TRNetworkManager {
    func response<D: Codable>(_ treeURLRequest: any TRURLRequest,
                                type: D.Type,
                                completion: @escaping (_ value: D?, _ error: Error?) -> Void) {
        AF.request(treeURLRequest)
            .responseDecodable(of: TreeNetworkResult<D>.self) { response in
                do {
                    if let statusCode =  response.response?.statusCode {
                        switch statusCode {
                        case (200..<400): break
                        case (400): throw TRNetworkError.badRequestError
                        case (404): throw TRNetworkError.notFoundError
                        case (403): throw TRNetworkError.forbiddenError
                        case (500): throw TRNetworkError.internalServerError
                        default: break
                        }
                    }
                    guard let networkResult = response.value else {
                        completion(nil, response.error)
                        return
                    }
                    
                    guard networkResult.isSuccess else {
                        completion(nil, TRNetworkError.requestFail(code: networkResult.code,
                                                                   message: networkResult.message))
                        return
                    }
                    
                    completion(networkResult.result, response.error)
                } catch {
                    print(#function, error)
                    completion(nil, error)
                }
            }
    }
    
    func response(_ treeURLRequest: any TRURLRequest,
                  completion: @escaping (_ value: Data?, _ error: Error?) -> Void) {
        AF.request(treeURLRequest)
            .responseData { response in
                completion(response.value, response.error)
            }
    }
}
