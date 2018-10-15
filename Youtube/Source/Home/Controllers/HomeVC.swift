//
//  HomeVC.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/6.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var titleCollectionView: UICollectionView!//标题
    @IBOutlet weak var myTableView: UITableView!//列表
    var collectionViewModel = DefaultUICollectionViewModel()
    var tableViewModel = DefaultUITableViewModel()
    var titleList:[CategoryModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        registNibs()
        requestData()
        configTestData()
    }
    func configTestData() -> Void {
        titleList = CategoryModel.testModelList()
        let list = titleList.map { (model) -> HomeTitleModel in
            let m = HomeTitleModel.init()
            m.model = model
            return m
        }
        let section = DefaulUICollectionViewSectionModel.init()
        section.items.append(contentsOf: list)
        collectionViewModel.sections.append(section)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension HomeVC{
    func registNibs() -> Void {
        titleCollectionView.register(UINib.init(nibName: "HomeTitleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeTitleCollectionViewCell")
    }
    func requestData() -> Void {
        
    }
    func updateUI() -> Void {
        
    }
}
extension HomeVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return collectionViewModel.sections[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let model = collectionViewModel.model(for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model, for: indexPath)
        return cell
    }
}
//UICollectionViewDelegate
extension HomeVC:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if let model = collectionViewModel.model(for: indexPath) as? HomeTitleModel{
            Networking.search(q: model.model.title, finish: { (result) in
                
            }) { (e) in
                
            }
        }
    }
}
extension HomeVC:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if let model = collectionViewModel.model(for: indexPath) as? UICollectionViewCellSizeModel{
            return model.size
        }
        return CGSize(width: 100, height: 40)
    }
}
extension HomeVC:UITableViewDelegate{
    
}
extension HomeVC:UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = tableViewModel.model(for: indexPath)
        return tableView.dequeueReusableCell(withModel: model, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return tableViewModel.sections.count
    }
}

