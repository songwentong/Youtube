//
//  APIInterface.swift
//  News
//
//  Created by 宋文通 on 2018/5/3.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
//域名
enum Domain:String {
    case serverURL = "http://baidu.com"//服务器地址
    case testURL = "https://httpbin.org"//测试的
}
//接口名
enum ServerMethod: String {
    case testGet = "get"
    case testPost = "post"
}
