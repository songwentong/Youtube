//
//  UICollectionViewCellModel.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import Foundation
import CoreGraphics
protocol UICollectionViewCellModel {//cell
    var reuseId:String{get set}
}
//收取的cell应该实现的协议
protocol UICollectionViewCellModelAcceptProtocol {//数据
    var cellModel:UICollectionViewCellModel!{get set}
}
