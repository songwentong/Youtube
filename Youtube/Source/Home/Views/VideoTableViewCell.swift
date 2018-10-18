//
//  VideoTableViewCell.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit
import Kingfisher
import youtube_ios_player_helper
class VideoTableViewCell: UITableViewCell,UITableViewCellModelAcceptable {
    var cellModel: UITableViewCellModel!{
        didSet{
            if let m = cellModel as? HomeVideoTableViewCellModel{
                detailModel = m
            }
        }
    }
    @IBOutlet weak var myImageView: UIImageView!//图片
    @IBOutlet weak var videotitleLabel: UILabel!//标题
    var detailModel: HomeVideoTableViewCellModel!{
        didSet{
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        videotitleLabel.text = detailModel.model.snippet.title
        guard let thumbnails = detailModel.model.snippet.thumbnails else {
            return
        }
        guard let url = URL.init(string: thumbnails.high.url) else {
            return
        }
        
        myImageView.kf.setImage(with: url)
        
        
    }
    
}
