//
//  TestViewController.swift
//  Youtube
//
//  Created by 宋文通 on 2018/10/9.
//  Copyright © 2018 Wentong Song. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    var firstSection = DefaultUITableViewSectionModel()
}
extension TestViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        shareModel()
    }
    func shareModel() -> Void {
        let model = TestCellModel()
        model.testTitle = "点击分享日志"
        model.clickEvent = {[weak self] in
            self?.performSegue(withIdentifier: "log", sender: "")
        }
        firstSection.append(row: model)
    }
}
extension TestViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstSection.rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = firstSection.rows[indexPath.row]
        let cell = tableView.dequeueReusableCell(withModel: model, for: indexPath)
        return cell
    }
    
    
}
extension TestViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let model = firstSection.rows[indexPath.row]
        if let m = model as? UITableViewCellSelection{
            m.clickEvent()
        }
    }
}
