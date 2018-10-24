//
//  TestCellTableViewCell.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/24.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class TestCellTableViewCell: UITableViewCell,UITableViewCellModelAcceptable {
    var cellModel: UITableViewCellModel!{
        didSet{
            if let model = cellModel as? TestCellModel{
                detailModel = model
            }
        }
    }
    var detailModel: TestCellModel!{
        didSet{
            testLabel.text = detailModel.testTitle
        }
    }
    @IBOutlet weak var testLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
