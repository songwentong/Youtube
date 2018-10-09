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
    case testServer = "http://10.45.20.11:88"//测试服务器
    case releaseServer = "https://api.mobigroup.cn"//正式服务器
    case fengkongcloudAPI = "http://api.fengkongcloud.com/v2/event" //数美
    case h5Host = "https://s.mobigroup.cn"//h5-release
}
//接口名
enum ServerMethod: String {
    case testGet = "get"
    case testPost = "post"
    case wechat_access_token = "access_token"//access token
    case wexin_refresh_token = "refresh_token"//刷新token
    case sendValidCode = "validcode"//发送验证码
    case phoneIsBinded = "phone/hasbind"//手机号是否绑定过
    case wxLogin = "user/wx"//微信登录
    case phoneLogin = "user/phone"//手机号登录
    case logout = "logout"//手机号退出登录
    case getAdsConfig = "adsconf"//获取广告配置
    case categories = "categories"//获取categories
    case channelNews = "news/category" // 获取频道新闻
    case news_24hours_newest = "news/24hours/newest" // 24小时快讯列表：最新
    case news_24hours_paging = "news/24hours/paging" // 24小时快讯列表：分页
    case postComment = "news/comment" // get获取评论 post提交评论 delete 删除评论
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
    case messagenew = "message/new"
    case getUploadFileUrl = "fileurl"
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
    case user_withdraws = "user/withdraws"
    case treasureShare = "user/treasure/share"//分享宝箱
    case launchGift = "user/launchGift"//领取启动红包
    case config = "config"
    case newsFeedback = "news/feedback" //文章纠错
    case newsReport = "news/report"     //文章举报
    case banners = "banners"
    case splashes = "splashes"
    case detailRecommend = "detail/recommend"
    case collectionNews = "collection"
    case browse = "user/browse"
    case deleteBrowse = "delbrowse"
    case usercollection = "usercollection"
    case commentReport = "comment/report" //评论举报
}

