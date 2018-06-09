//
//  HomeCollectionViewCell.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell,UICollectionViewCellModelAcceptProtocol {
    var cellModel: UICollectionViewCellModel!
    @IBOutlet weak var myTableView: UITableView!
    var tableModel = DefaultUITableViewModel()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myTableView.dataSource = self
        myTableView.delegate = self
        refreshDataIfNeeded()
    }
}
extension HomeCollectionViewCell{
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
        let cell = tableView.dequeueReusableCell(withIdentifier: model.reuseIdentifier, for: indexPath)
        if var ac = cell as? UITableViewCellModelAcceptable{
            ac.cellModel = model
        }
        return cell
    }
    
    
}
extension HomeCollectionViewCell:UITableViewDelegate{
    
}
