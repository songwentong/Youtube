//
//  Dictionary.swift
//  News
//
//  Created by 宋文通 on 2018/5/3.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
//+运算符重载
func + <K, V> (left: [K:V], right: [K:V]) -> [K:V] {
    var result = left
    for (k, v) in right {
        result[k] = v
    }
    return result
}
