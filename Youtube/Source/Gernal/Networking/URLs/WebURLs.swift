//
//  WebURLs.swift
//  News
//
//  Created by 宋文通 on 2018/6/5.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
/*
 30日签到
 如何赚钱
 收徒
 邀请码
 */
extension Networking{
    static func h5Host() -> String {
        if Networking.default.hostURL.elementsEqual(Domain.testServer.rawValue){
            return Domain.testServer.rawValue
        }else{
            return Domain.h5Host.rawValue
        }
    }
    //30日签到
    static func signIn30DaysURL(with token:String)->String{
        let ts = "\(h5Host())/\(webViewURL.taskStatus.rawValue)?token=\(token)"
        return ts
    }
    
    static func howToMakeMoney()->String{
        return "\(h5Host())/\(webViewURL.makeMoney.rawValue)"
    }
    static func faq()->String{
        return "\(h5Host())/\(webViewURL.faq.rawValue)"
    }
    
   
}
