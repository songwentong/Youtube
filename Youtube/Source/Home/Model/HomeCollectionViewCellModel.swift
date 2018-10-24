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
struct VideoModel:Codable {
    
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
class HomeTitleCollectionCellModel:NSObject, UICollectionViewCellModel,UICollectionViewCellSizeModel,Codable {
    var size: CGSize = CGSize(width: 100, height: 30)
    var reuseId: String = "HomeTitleCollectionViewCell"
    var model: CategoryModel!
    
}
class HomeContentCollectionViewCellModel: NSObject,UICollectionViewCellModel {
    var reuseId: String = "HomeCollectionViewCell"
    var model: CategoryModel!//titlemModel
    var searchResult:SearchResult?//搜索结果
}

//视频单元格
class HomeVideoTableViewCellModel: UITableViewCellModel {
    var reuseIdentifier: String = "VideoTableViewCell"
    var model: SearchResultUnit!//单条搜索结果
}
extension SearchResult{
    //转换为section
    func convertToContentSection() -> UITableViewSectionModel {
        let mapedModel = items.map { (unit) -> HomeVideoTableViewCellModel in
            let model = HomeVideoTableViewCellModel()
            model.model = unit
            return model
        }
        let section = DefaultUITableViewSectionModel()
        section.rows.append(contentsOf: mapedModel)
        
        
        return section
    }
}
