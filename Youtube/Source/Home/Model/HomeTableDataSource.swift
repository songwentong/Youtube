//
//  HomeTableDataSource.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeTableDataSource: NSObject {
    var tableModel = DefaultUICollectionViewModel()
}
extension HomeTableDataSource:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.sections[0].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
    
    
}
