//
//  HomeCollectionViewCell.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//  视频列表

import UIKit

class HomeCollectionViewCell: UICollectionViewCell,UICollectionViewCellModelAcceptProtocol {
    var cellModel: UICollectionViewCellModel!{
        didSet{
            if let m = cellModel as? HomeContentCollectionViewCellModel{
                detailModel = m
            }
        }
    }
    
    @IBOutlet weak var myTableView: UITableView!
    var tableModel = DefaultUITableViewModel()
    var detailModel:HomeContentCollectionViewCellModel!{
        didSet{
            guard let searchResult = detailModel.searchResult else{return}
            let section = searchResult.convertToContentSection()
            tableModel.sections.removeAll()
            tableModel.sections.append(section)
            myTableView.reloadData()
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        registNib()
        refreshDataIfNeeded()
    }
}
extension HomeCollectionViewCell{
    func registNib() -> Void {
        let nib = UINib.init(nibName: "VideoTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "VideoTableViewCell")
    }
    func refreshDataIfNeeded() -> Void {
        
    }
}
extension HomeCollectionViewCell:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int{
        return tableModel.sections.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.sections[0].rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableModel.model(for: indexPath)
        let cell = tableView.dequeueReusableCell(withModel: model, for: indexPath)
        return cell
    }
    
    
}
extension HomeCollectionViewCell:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 156
    }
}
