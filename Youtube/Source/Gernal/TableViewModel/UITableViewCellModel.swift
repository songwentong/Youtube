//
//  UITableViewCellModel.swift
//  News
//
//  Created by 宋文通 on 2018/6/8.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import UIKit
//row model protocol
protocol UITableViewCellModel {
    var reuseIdentifier:String{get}//重用ID
}
//收取的cell应该实现的协议
protocol UITableViewCellModelAcceptable {
    var cellModel:UITableViewCellModel!{get set}
}
//高度协议
protocol UITableViewCellHeightProtocol:UITableViewCellModel {
    var heightForRow:CGFloat{get set}
}
protocol UITableViewCellSelection:UITableViewCellModel {
    var clickEvent:(()->Void){get set}//点击回调
}
//row 的默认实例
open class DefaultTableViewCellModel:UITableViewCellModel,UITableViewCellHeightProtocol,UITableViewCellSelection {
    var heightForRow: CGFloat = UITableView.automaticDimension//行高
    var reuseIdentifier: String = ""//重用ID
    var clickEvent:(()->Void) = {}//点击事件
}
extension UITableView{
    func dequeueReusableCell(withModel cellModel:UITableViewCellModel, for indexPath: IndexPath) -> UITableViewCell{
        let cell = dequeueReusableCell(withIdentifier: cellModel.reuseIdentifier, for: indexPath)
        if var pc = cell as? UITableViewCellModelAcceptable{
            pc.cellModel = cellModel
        }
        return cell
    }
}
