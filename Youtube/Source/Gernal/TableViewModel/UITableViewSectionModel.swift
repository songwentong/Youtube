//
//  UITableViewSectionModel.swift
//  News
//
//  Created by 宋文通 on 2018/6/8.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
//section model protocol
protocol UITableViewSectionModel {
    var rows:[UITableViewCellModel]{get set}
}
//section 的默认实例
class DefaultUITableViewSectionModel:UITableViewSectionModel {
    var rows:[UITableViewCellModel] = []//行
    func append( row:UITableViewCellModel) -> Void {
        rows.append(row)
    }
}
