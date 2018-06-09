//
//  DefaultUITableViewDataSource.swift
//  News
//
//  Created by 宋文通 on 2018/6/8.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import UIKit
class DefaultUITableViewDataSource:NSObject, UITableViewDataSource, UITableViewDelegate {
    var tableViewModel:DefaultUITableViewModel = DefaultUITableViewModel()//数据
    func numberOfSections(in tableView: UITableView) -> Int{
        return tableViewModel.sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewModel.sections[section].rows.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableViewModel.sections[indexPath.section].rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: model.reuseIdentifier, for: indexPath)
        //传数据
        if var detail = cell as? UITableViewCellModelAcceptable{
            detail.cellModel = model
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        //给高度
        if let cellModel = tableViewModel.sections[indexPath.section].rows[indexPath.row] as? UITableViewCellHeightProtocol{
            return cellModel.heightForRow
        }
        return UITableViewAutomaticDimension
    }
}

