//
//  HomeCollectionViewCellModel.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit
struct CategoryModel:Codable {
    var title:String
}
extension CategoryModel{
    static func testModelList() -> [CategoryModel] {
        var list = [CategoryModel]()
        list.append(CategoryModel.init(title: "西游记"))
        list.append(CategoryModel.init(title: "还珠格格"))
        list.append(CategoryModel.init(title: "芈月传"))
        list.append(CategoryModel.init(title: "琅琊榜"))
        return list
    }
}
class HomeTitleModel: NSObject,UICollectionViewCellModel {
    var reuseId: String = "HomeTitleCollectionViewCell"
    var model: CategoryModel!
}
class HomeCollectionViewCellModel: NSObject,UICollectionViewCellModel {
    var reuseId: String = "HomeCollectionViewCell"
}
