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
}

extension Networking{
    open static let `default`: Networking = {
        return Networking()
    }()
    
    func url(with domain:Domain = .serverURL,methodName apiName:ServerMethod, appendString: String? = nil) -> URL {
//        let urlString = domain.rawValue + "/" + apiName.rawValue + "/" + appendString
        var strings = [domain.rawValue,apiName.rawValue]
        if let temp = appendString{
            strings.append(temp)
        }
        let urlString = strings.joined(separator: "/")
        let url = URL.init(string: urlString)
        return url!
    }
}
extension Networking {
    
    func convertResponse<T:Codable>(dataResponse:DataResponse<Data>,
                                    finished:  (T)->Void,
                                    failed:  (NetWorkingError)->Void) -> Void {
        guard dataResponse.error == nil else{
            failed(NetWorkingError(type: .networkError, code: ReturnCode.success))//网络异常
            return
        }
        guard let data = dataResponse.data else{
            failed(NetWorkingError(type: .unknown, code: ReturnCode.success))//没有数据,未知异常
            return
        }
        do{
            let code = try JSONDecoder().decode(CommonResponse<EmptyModel>.self, from: data)//校验响应码
            self.serverTime = code.timestamp
            if code.returnCode == .success {
                let detailResponseModel = try JSONDecoder().decode(CommonResponse<T>.self, from: data)//解析数据
                if let responseData = detailResponseModel.responseData{
                    finished(responseData)//正确解析
                    //                        window.showHud(with: "正确解析")
                }else{
                    failed(NetWorkingError(type: .analyzeFailed, code: ReturnCode.success))//解析失败
                }
            }else{
                failed(NetWorkingError(type: .networkError, code: code.returnCode))
                let string = String.init(data: data, encoding: .utf8)
                newsPrint("\(String(describing: string))")
            }
        }catch{
            let string = String.init(data: data, encoding: .utf8)
            newsPrint("string:\(String(describing: string))")
            newsPrint("\(error)")
            failed(NetWorkingError(type: .analyzeFailed, code: ReturnCode.success))
        }
        
    }
    @discardableResult
    func network_request<T: Codable>(
        _ url: URLConvertible,
        method: HTTPMethod = .get,
        parameters: APIParameters? = nil,
        encoding: ParameterEncoding = URLEncoding.default,
        headers: HTTPHeaders? = nil,
        finished: @escaping (T)->Void,
        failed: @escaping (NetWorkingError)->Void)  -> DataRequest
    {
        var myHeaders = HTTPHeaders()
        if let headers = headers{
            myHeaders = myHeaders + headers
        }
        if let defaultHttpHeaders = defaultHttpHeaders(){
            myHeaders = myHeaders + defaultHttpHeaders
        }
        let task = Alamofire.request(url, method: method, parameters: parameters, encoding: encoding, headers: myHeaders)
        task.responseData { (response) in
            self.convertResponse(dataResponse: response, finished: finished, failed: failed)
        }
        return task
    }
}
extension Networking{
    public func upload(
        multipartFormData: @escaping (MultipartFormData) -> Void,
        usingThreshold encodingMemoryThreshold: UInt64 = SessionManager.multipartFormDataEncodingMemoryThreshold,
        to url: URLConvertible,
        method: HTTPMethod = .post,
        headers: HTTPHeaders? = nil,
        encodingCompletion: ((SessionManager.MultipartFormDataEncodingResult) -> Void)?){var myHeaders = HTTPHeaders()
        if let headers = headers{
            myHeaders = myHeaders + headers
        }
        if let defaultHttpHeaders = defaultHttpHeaders(){
            myHeaders = myHeaders + defaultHttpHeaders
        }
        Alamofire.upload(multipartFormData: multipartFormData, usingThreshold: encodingMemoryThreshold, to: url, method: method, headers: myHeaders, encodingCompletion: encodingCompletion)
    }
    
}
extension Networking{
    //默认header
    func defaultHttpHeaders() -> HTTPHeaders? {
        return nil
    }
}

extension Networking {
    
}
//常规响应
struct CommonResponse<T: Codable>: Codable {
    let returnCode: ReturnCode
    let message: String
    let timestamp: Int
    let responseData: T?

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
