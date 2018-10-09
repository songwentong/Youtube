//
//  H5URLs.swift
//  News
//
//  Created by 宋文通 on 2018/6/25.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
//H5页面的url
enum webViewURL:String{
    case taskStatus = "h5/detailShare/taskState.html"//任务状态
    case makeMoney = "h5/detailShare/makeMoney.html"//如何赚钱
    case faq = "h5/detailShare/commonProblem.html"//常见问题
    case inviteCode = "h5/detailShare/inviCode.html"//输入邀请码
    case inviteGuidee = "h5/detailShare/getApprentice.html" //收徒
    case userProtocol = "h5/detailShare/protocol.html"//用户协议
    case articleShare = "h5/detailShare/share.html"//分享文章
    case task = "h5/detailShare/task.html"
}
extension Networking{
    static func title( titleForURL:webViewURL) -> String {
        switch titleForURL {
        case .taskStatus:
            return "任务状态"
        case .makeMoney:
            return "如何赚钱"
        case .inviteCode:
            return "输入邀请码"
        default:
            return ""
        }
    }
}
