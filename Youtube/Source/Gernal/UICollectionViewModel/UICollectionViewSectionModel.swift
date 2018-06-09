//
//  UICollectionViewSectionModel.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import Foundation
protocol UICollectionViewSectionModel {//section
    var items:[UICollectionViewCellModel]{get set}
}
class DefaulUICollectionViewSectionModel: UICollectionViewSectionModel {//默认的section
    var items:[UICollectionViewCellModel] = []
}
