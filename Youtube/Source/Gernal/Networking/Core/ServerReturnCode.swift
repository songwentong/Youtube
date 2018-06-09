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
    case success            = 0     //成功
    case paramError         = 101   //参数错误
    case notLogin           = 102   //没有登录
    case vcodeError         = 103   //验证码错误
    case smsError           = 104   //短信通道错误
    case userNotExist       = 201   //用户不存在
    case newBoxHasGet       = 202   //新手宝箱已领
    case newBoxNotExist     = 203   //新手宝箱不存在
    case guideHasGet        = 211   //已经有师傅
    case guideCannotBeSelf  = 212   //不能拜自己为师
    case guideCodeInvalid   = 213   //无效师徒码
    case guideReachLimit    = 214   //徒弟数量到上线
    case commentTooLong     = 215   //评论太长
    case signDayError       = 221   //签到天数错误
    case treasureCoolDown   = 222   //宝箱未到冷却时间
    case taskHadGot         = 223   //已经领取任务奖励
    case taskNotComplete    = 224   //任务未完成
    case guideRecallCD      = 230   //唤醒徒弟CD
    case guideThankCD       = 231   //感谢徒弟CD
    case guideRemindCD      = 232   //提醒徒弟CD
    case guideRecallInvalid = 233   //徒弟未流失
    case amountNotAllow     = 234   // 提现金额不允许
    case amountConditionFail = 235  // 提现金额条件不满足
}



