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
    case serverURL = "http://10.45.20.11:88"//服务器地址
    case testURL = "https://httpbin.org"//测试的
    case weixinAPI = "https://api.weixin.qq.com/sns/oauth2"//微信
}
//接口名
enum ServerMethod: String {
    case testGet = "get"
    case testPost = "post"
    case wechat_access_token = "access_token"//access token
    case wexin_refresh_token = "refresh_token"//刷新token
    case sendValidCode = "validcode"//发送验证码
    case wxLogin = "user/wx"//微信登录
    case phoneLogin = "user/phone"//手机号登录
    case categories = "categories"//获取categories
    case channelNews = "news/category" // 获取频道新闻
    case postComment = "news/comment" // 提交评论
    case userinfo = "userinfo"
    case user_newbox = "user/newbox"
    case user_guide = "user/guide"//拜师
    case user_sign = "user/sign"
    case user_treasure = "user/treasure"
    case rollmsg = "rollmsg"
    case unlike = "unlike"//文章负反馈(删除不喜欢的文章)
    case like = "like"//文章点赞
    case user_report = "user/report"
    case taskConf = "taskConf"
    case task = "task"
    case tasks = "tasks"
    case taskCategory = "taskCategory"
    case hotComment = "news/hotComment"
    case time = "time"
    case messages = "messages"
    case user = "user"
    case guidees = "user/guidees"//获取徒弟列表
    case resetGuideeCD = "debug/resetGuideeCds"//debug 清除CD时间
    case guideesRecall = "user/guidees/recall"//召回休眠的徒弟
    case guideesRemind = "user/guidees/remind"//提醒徒弟
    case guideesThank = "user/guidees/thank"//感谢徒弟
    case bill = "bill" // 账单
    case activitys = "activitys"
    case news = "news"
    case withdraw = "withdraw"
    //case
}
