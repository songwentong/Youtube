//
//  RequestCreate.swift
//  News
//
//  Created by 宋文通 on 2018/9/3.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import Alamofire
extension Networking {
    
    
    @discardableResult
    func network_request(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: APIParameters = [:],
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders = HTTPHeaders(),
        cachePolicy:URLRequest.CachePolicy = .useProtocolCachePolicy,
        timeoutInterval: TimeInterval = 20)-> DataRequest{
        let myHeaders = defaultHttpHeaders().merging(headers) { (c, n) -> String in
            return n
        }
        
        var originalRequest: URLRequest?
        do {
            originalRequest = try URLRequest(url: url, method: method, headers: myHeaders)
            var encodedURLRequest = try encoding.encode(originalRequest!, with: parameters)
            encodedURLRequest.cachePolicy = cachePolicy
            encodedURLRequest.timeoutInterval = timeoutInterval
            let task = Alamofire.request(encodedURLRequest)
            return task
        } catch {
            let task = Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: myHeaders)
            return task
        }
    }
    @discardableResult
    func network_request<T: Codable>(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: APIParameters = [:],
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders = HTTPHeaders(),
        timeoutInterval: TimeInterval = 20,
        finished: @escaping (T)->Void,
        failed: @escaping (NetWorkingError)->Void)  -> DataRequest
    {
        let task = network_request(url, method: method, parameters: parameters, encoding: encoding, headers: headers, timeoutInterval: timeoutInterval)
        task.convertDetailType(result: finished, failed: failed)
        return task
    }
}
