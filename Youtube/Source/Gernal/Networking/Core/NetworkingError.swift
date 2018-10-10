//
//  NetworkingError.swift
//  News
//
//  Created by 宋文通 on 2018/6/7.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
struct NetWorkingError {
    var type:NetworkingErrorType
    var code:ReturnCode
    


}
extension NetWorkingError{
    static func unknownError()->NetWorkingError{
        return NetWorkingError.init(type: .unknown, code: ReturnCode.success)
    }
    static func networkError() -> NetWorkingError {
        return NetWorkingError.init(type: .networkError, code: ReturnCode.success)
    }
    static func analyzeFailed() -> NetWorkingError {
        return NetWorkingError.init(type: .analyzeFailed, code: ReturnCode.success)
    }
}
enum NetworkingErrorType: Error {
    case networkError           //网络异常
    case analyzeFailed          //model解析错误
    case returnCode(Int)             //return码
    case unknown                //未知错误
}
