//
//  UICollectionViewModel.swift
//  News
//
//  Created by 宋文通 on 2018/5/23.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics
protocol UICollectionViewCellModel {//cell
    var reuseId:String{get set}
}
protocol UICollectionViewSectionModel {//section
    var items:[UICollectionViewCellModel]{get set}
}
protocol UICollectionViewModel {
    var sections:[UICollectionViewSectionModel]{get set}
}
protocol UICollectionViewCellSizeModel {//大小
    var size:CGSize{get set}
}
class DefaultUICollectionViewCellModel: UICollectionViewCellModel {//默认的实现
    var reuseId:String = ""
    var size:CGSize = CGSize.zero
}
class DefaulUICollectionViewSectionModel: UICollectionViewSectionModel {//默认的section
    var items:[UICollectionViewCellModel] = []
}
//收取的cell应该实现的协议
protocol UICollectionViewCellModelAcceptProtocol {//数据
    var cellModel:UICollectionViewCellModel!{get set}
}
