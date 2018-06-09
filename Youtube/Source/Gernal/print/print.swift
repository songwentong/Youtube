//
//  print.swift
//  News
//
//  Created by 宋文通 on 2018/5/9.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation

//打印日志,只在debug触发
public func newsPrint(
    _ items: Any...,
    separator: String = " ",
    terminator: String = "\n",
    file: String = #file,
    method: String = #function,
    line: Int = #line
    ) {
    #if DEBUG
    print("\(currentDate()) \((file as NSString).lastPathComponent)[\(line)], \(method)")
    print(items,separator: separator,terminator: terminator)
    #endif
}
public func currentDate() -> Date {
    let dateZero = Date()
    let systemZone = NSTimeZone.local
    let intervale = systemZone.secondsFromGMT()
    let currentDate = Date.init(timeInterval: TimeInterval(intervale), since: dateZero)
    return currentDate
}
