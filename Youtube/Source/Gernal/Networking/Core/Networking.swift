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
    public var serverTime: Int?
    var hostURL:String = ""
    var reachabilityManager:NetworkReachabilityManager?
    init() {
        hostURL = initHost()
    }
    
}
extension Networking{
    public static let `default`: Networking = {
        let ntw = Networking()
        ntw.startReachability()
        return ntw
    }()
    func initHost() -> String {
        return Domain.serverURL.rawValue
    }
    func switchHotsURL() -> Void {
        let test = Domain.serverURL.rawValue
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
        let headers = HTTPHeaders()
        return headers
    }
}

extension Networking {
    
}
//常规响应
struct CommonResponse<T: Codable>: Codable {
    let code: Int
//    let error: Int
    let message: String
    let responseData: T
}

//空对象,用于只需要return code的请求
struct EmptyModel: Codable{
    
}
extension Notification.Name{
    static let NetworkingRequestFinishedNotification = Notification.Name.init("networkingRequestFinishedNotification")//
}
protocol NetworkingResultModel:class {
    
}
