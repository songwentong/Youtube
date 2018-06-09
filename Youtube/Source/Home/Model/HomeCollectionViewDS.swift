//
//  HomeCollectionViewDS.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeCollectionViewDS: NSObject {
    var collectionModel = DefaultUICollectionViewModel()
}
extension HomeCollectionViewDS{
    //造点假数据
    func createFadeData() -> Void {
        let defaultSection = DefaulUICollectionViewSectionModel()
        for _ in 0..<10 {
            let model = HomeCollectionViewCellModel()
            defaultSection.items.append(model)
        }
        collectionModel.sections.append(defaultSection)
    }
}
extension HomeCollectionViewDS:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionModel.sections[0].items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = collectionModel.model(for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model.reuseId, for: indexPath)
        return cell
    }
}
extension HomeCollectionViewDS:UIScrollViewDelegate{}
extension HomeCollectionViewDS:UICollectionViewDelegate{}
extension HomeCollectionViewDS:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return collectionView.bounds.size
    }
}
