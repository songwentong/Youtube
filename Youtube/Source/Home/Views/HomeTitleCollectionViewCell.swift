//
//  HomeTitleCollectionViewCell.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeTitleCollectionViewCell: UICollectionViewCell ,UICollectionViewCellModelAcceptProtocol {
    @IBOutlet weak var titleLabel: UILabel!
    var cellModel: UICollectionViewCellModel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
