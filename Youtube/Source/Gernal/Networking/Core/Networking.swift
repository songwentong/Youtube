//
//  Networking.swift
//  News
//
//  Created by 宋文通 on 2018/5/2.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import Alamofire
typealias APIParameters = [String: Any]//参数

final class Networking {
    open var serverTime: Int?
    var hostURL:String = ""
    var reachabilityManager:NetworkReachabilityManager?
    init() {
        hostURL = initHost()
    }
    
}
extension Networking{
    open static let `default`: Networking = {
        let ntw = Networking()
        ntw.startReachability()
        return ntw
    }()
    func initHost() -> String {
        #if DEBUG //开发用
        return Domain.testServer.rawValue
//        return Domain.releaseServer.rawValue
        #elseif ADHOC //给测试看(蒲公英)
        return Domain.testServer.rawValue
//        return Domain.releaseServer.rawValue
        #else //发版
        return Domain.releaseServer.rawValue
        #endif
    }
    func switchHotsURL() -> Void {
        let test = Domain.testServer.rawValue
        let release = Domain.releaseServer.rawValue
        if hostURL.elementsEqual(test) {
            hostURL = release
        }else{
            hostURL = test
        }
    }
    func startReachability() -> Void {
        reachabilityManager = NetworkReachabilityManager(host: Domain.releaseServer.rawValue)
        reachabilityManager?.listener = { status in
            newsPrint("Network Status Changed: \(status)")
        }
        reachabilityManager?.startListening()
    }
    func url( methodName apiName:ServerMethod, appendString: String? = nil) -> URL {
        var strings = [hostURL,apiName.rawValue]
        if let temp = appendString{
            strings.append(temp)
        }
        let urlString = strings.joined(separator: "/")
        let url = URL.init(string: urlString)
        return url!
    }
}
extension Networking {
    @discardableResult
    func network_request<T: Codable>(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: APIParameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders = HTTPHeaders(),
        timeoutInterval: TimeInterval = 20,
        finished: @escaping (T)->Void,
        failed: @escaping (NetWorkingError)->Void)  -> DataRequest
    {
        let myHeaders = defaultHttpHeaders().merging(headers) { (c, n) -> String in
            return n
        }
        var originalRequest: URLRequest?
        do {
            originalRequest = try URLRequest(url: url, method: method, headers: myHeaders)
            var encodedURLRequest = try encoding.encode(originalRequest!, with: parameters)
            encodedURLRequest.timeoutInterval = timeoutInterval
            let task = Alamofire.request(encodedURLRequest)
            task.convertDetailType(result: finished, failed: failed)
            return task
        } catch {
            let task = Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: myHeaders)
            return task
        }
//        task.convertDetailType(result: finished, failed: failed)
//        return task
    }
}
extension Networking{
    public func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders = HTTPHeaders(),
        encodingCompletion: ((SessionManager.MultipartFormDataEncodingResult) -> Void)?){
        let myHeaders = defaultHttpHeaders().merging(headers) { (c, n) -> String in
            return n
        }
        Alamofire.upload(multipartFormData: multipartFormData, usingThreshold: encodingMemoryThreshold, to: url, method: method, headers: myHeaders, encodingCompletion: encodingCompletion)
    }
    
}
extension Networking{
    //默认header
    func defaultHttpHeaders() -> HTTPHeaders {
        var headers = HTTPHeaders()
        return headers
    }
}

extension Networking {
    
}
//常规响应
struct CommonResponse<T: Codable>: Codable {
    let returnCode: Int
    let message: String
    let timestamp: Int
    let responseData: T

    enum CodingKeys: String, CodingKey {
        case returnCode = "ret"
        case message = "msg"
        case responseData = "data"
        case timestamp = "timestamp"
    }
}

//空对象,用于只需要return code的请求
struct EmptyModel: Codable{
    
}
extension Notification.Name{
    static let NetworkingRequestFinishedNotification = Notification.Name.init("networkingRequestFinishedNotification")//
}
protocol NetworkingResultModel:class {
    
}
