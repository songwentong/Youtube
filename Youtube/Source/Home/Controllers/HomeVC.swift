//
//  HomeVC.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/6.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var myds = HomeCollectionViewDS()
    override func viewDidLoad() {
        super.viewDidLoad()
        registNibs()
        requestData()
        myds.createDefaultData()
        myCollectionView.dataSource = myds
        myCollectionView.delegate = myds
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
        myCollectionView.register(UINib.init(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
    }
    func requestData() -> Void {
        
    }
    func updateUI() -> Void {
        
    }
}
