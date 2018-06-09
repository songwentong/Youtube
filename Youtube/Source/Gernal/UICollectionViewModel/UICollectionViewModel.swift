//
//  UICollectionViewModel.swift
//  News
//
//  Created by 宋文通 on 2018/5/23.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import CoreGraphics
protocol UICollectionViewSectionModel {//section
    var items:[UICollectionViewCellModel]{get set}
}
protocol UICollectionViewModel {
    var sections:[UICollectionViewSectionModel]{get set}
}
protocol UICollectionViewCellSizeModel {//大小
    var size:CGSize{get set}
}
class DefaultUICollectionViewModel: NSObject,UICollectionViewModel {
    var sections:[UICollectionViewSectionModel] = []
    func model(for indexPath:IndexPath) -> UICollectionViewCellModel {
        let model = sections[indexPath.section].items[indexPath.item]
        return model
    }
}
class DefaultUICollectionViewCellModel: UICollectionViewCellModel {//默认的实现
    var reuseId:String = ""
    var size:CGSize = CGSize.zero
}
class DefaulUICollectionViewSectionModel: UICollectionViewSectionModel {//默认的section
    var items:[UICollectionViewCellModel] = []
}
