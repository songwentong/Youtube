//
//  SeparateLineTableViewCell.swift
//  News
//
//  Created by 宋文通 on 2018/5/24.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import UIKit
//分隔线
class SeparateLineCellModel:UITableViewCellModel,UITableViewCellHeightProtocol {
    var reuseIdentifier: String = "SeparateLineTableViewCell"
    var heightForRow: CGFloat = 1
}
class SeparateLineTableViewCell: UITableViewCell {

    @IBOutlet weak var leading: NSLayoutConstraint!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
