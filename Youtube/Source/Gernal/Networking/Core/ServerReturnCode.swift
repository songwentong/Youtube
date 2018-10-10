//
//  ServerReturnCode.swift
//  News
//
//  Created by 刘欢 on 2018/6/6.
//  Copyright © 2018 tempOrganization. All rights reserved.
//

import Foundation
/**
 *  服务器返回的returnCode，只有0是成功
 *  其他code根据不同业务决定前端是否需要提示用户
 */
enum ReturnCode: Int, Codable {
    case unknown = -100
    case success = 0
}
extension Int{
    func convertToReturnCode() -> ReturnCode {
        if let re = ReturnCode.init(rawValue: self){
            return re
        }
        return .unknown
    }
}



