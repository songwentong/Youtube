//
//  HomeVC.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/6.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var titleCollectionView: UICollectionView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    var myds = HomeCollectionViewDS()
    var titleDS = HomeTitleDS()
    var titleList:[CategoryModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        registNibs()
        requestData()
        myds.createDefaultData()
        myCollectionView.dataSource = myds
        myCollectionView.delegate = myds
        titleCollectionView.dataSource = titleDS
        titleCollectionView.delegate = titleDS
        titleList = tempCategoryList()
        titleDS.titleList = titleList
        titleCollectionView.reloadData()
    }
    func tempCategoryList() -> [CategoryModel] {
        var list = [CategoryModel]()
        for i in 0..<10{
            let cat = CategoryModel.init(title: "title\(i)")
            list.append(cat)
        }
        return list
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
        myCollectionView.register(UINib.init(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
    func requestData() -> Void {
        
    }
    func updateUI() -> Void {
        
    }
}
