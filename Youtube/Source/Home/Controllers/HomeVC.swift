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
    @IBOutlet weak var contentCollectionView: UICollectionView!//内容
    var titleCollectionViewModel = DefaultUICollectionViewModel()//title data
    var contentCollectionViewModel = HomeContentCollectionViewModel()//content data
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registNibs()
        requestData()
        configTestData()
    }
    func configTestData() -> Void {
        //title
        var titleList:[CategoryModel] = []
        titleList = CategoryModel.testModelList()
        let list = titleList.map { (model) -> HomeTitleCollectionCellModel in
            let m = HomeTitleCollectionCellModel.init()
            m.model = model
            return m
        }
        let titleSection = DefaulUICollectionViewSectionModel.init()
        titleSection.items.append(contentsOf: list)
        titleCollectionViewModel.sections.append(titleSection)
        //content
        let contentSist = titleSection.items.map { (m1) -> HomeContentCollectionViewCellModel in
            let m2 = HomeContentCollectionViewCellModel()
            if let m1 = m1 as? HomeTitleCollectionCellModel{
                m2.model = m1.model
            }
            return m2
        }
        let contentSection = DefaulUICollectionViewSectionModel()
        contentSection.items = contentSist
        contentCollectionViewModel.sections.append(contentSection)
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
        contentCollectionView.register(UINib.init(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
    func requestData() -> Void {
        
    }
    func updateUI() -> Void {
        
    }
    func modelforCollectionview( view:UICollectionView) -> DefaultUICollectionViewModel {
        if view == titleCollectionView{
            return titleCollectionViewModel
        }
        return contentCollectionViewModel
    }
    func insertContentList(for title:String, result:SearchResult) -> Void {
        let contentList = contentCollectionViewModel.sections[0].items
        guard let firstModel = contentList.first(where: { (firstModel) -> Bool in
            if let f = firstModel as? HomeContentCollectionViewCellModel{
                if f.model.title.elementsEqual(title){
                    return true
                }
            }
            return false
        }) else{
            return
        }
        guard let convert = firstModel as? HomeContentCollectionViewCellModel else{return}
        convert.searchResult = result
        contentCollectionView.reloadData()
    }
}
extension HomeVC:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        let model = modelforCollectionview(view: collectionView)
        return model.sections[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let model = modelforCollectionview(view: collectionView)
        let cellModel = model.model(for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel, for: indexPath)
        if let cellModel = cellModel as? HomeTitleCollectionCellModel{
            Networking.search(q: cellModel.model.title, finish: { [weak self](result) in
                self?.insertContentList(for: cellModel.model.title, result: result)
            }) { (e) in
                
            }
        }
        
        return cell
    }
}
//UICollectionViewDelegate
extension HomeVC:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        if collectionView == titleCollectionView{
            if let model = titleCollectionViewModel.model(for: indexPath) as? HomeTitleCollectionCellModel{
                Networking.search(q: model.model.title, finish: { (result) in
                    
                }) { (e) in
                    
                }
            }
        }
        
    }
}
extension HomeVC:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if collectionView == titleCollectionView{
            if let model = titleCollectionViewModel.model(for: indexPath) as? UICollectionViewCellSizeModel{
                return model.size
            }
        }
        if collectionView == contentCollectionView{
            guard let size = collectionView.superview?.bounds.size else{
                return CGSize.zero
            }
            return size
        }
        
        return CGSize(width: 100, height: 40)
    }
}
