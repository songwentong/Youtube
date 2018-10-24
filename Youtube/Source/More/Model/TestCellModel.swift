//
//  TestCellModel.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/24.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class TestCellModel: NSObject,UITableViewCellModel,UITableViewCellHeightProtocol,UITableViewCellSelection {
    var heightForRow: CGFloat = 44//行高
    var reuseIdentifier: String = "cell"//重用ID
    var clickEvent:(()->Void) = {}//点击事件
    var testTitle = ""
}
