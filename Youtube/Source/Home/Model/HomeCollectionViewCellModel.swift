//
//  HomeCollectionViewCellModel.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit
struct Title:Codable {
    var title:String
}
class HomeTitleModel: NSObject,UICollectionViewCellModel {
    var reuseId: String = "HomeTitleCollectionViewCell"
}
class HomeCollectionViewCellModel: NSObject,UICollectionViewCellModel {
    var reuseId: String = "HomeCollectionViewCell"
}
