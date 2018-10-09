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
    
    //收徒
    static func inviteGuidee() -> String? {
        guard let myGuideCode = AccountManager.shared.user?.myGuideCode else {
            return nil
        }
        let url = "\(h5Host())/\(webViewURL.inviteGuidee.rawValue)?guideCode=\(myGuideCode)"
        return url
    }
    
    static func inviteCode()->String{
        guard let token = AccountManager.shared.userToken else {
            return ""
        }
        let url = "\(h5Host())/\(webViewURL.inviteCode.rawValue)?token=\(token)"
        return url
    }
    //用户协议
    static func userProtocol()->String{
        let url = "\(h5Host())/\(webViewURL.userProtocol.rawValue)"
        return url
    }
    //文章分享url
    static func articleShareUrl(newsID: Int, userID: Int? = nil) -> String {
        var url = h5Host() + "/\(webViewURL.articleShare.rawValue)?newsId=" + String(newsID)
        if let uid = userID {
            url = url + "&uid=\(uid)"
        }
        return url
    }
    static func taskURL() -> String {
        var url = h5Host() + "/\(webViewURL.task.rawValue)"
        guard let token = AccountManager.shared.userToken else {
            return ""
        }
        url = url + "?token=\(token)"
        return url
    }
}
