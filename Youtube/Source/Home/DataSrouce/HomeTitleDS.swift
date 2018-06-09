//
//  HomeTitleDS.swift
//  Youtube
//
//  Created by 宋文通 on 2018/6/9.
//  Copyright © 2018年 Wentong Song. All rights reserved.
//

import UIKit

class HomeTitleDS: NSObject {
    var collectionModel = DefaultUICollectionViewModel()
}
extension HomeTitleDS{
    func createDefaultData() -> Void {
        
    }
}
extension HomeTitleDS:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionModel.sections[0].items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let model = collectionModel.model(for: indexPath)
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: model, for: indexPath)
        return cell
    }
}
extension HomeTitleDS:UIScrollViewDelegate{}
extension HomeTitleDS:UICollectionViewDelegate{}
extension HomeTitleDS:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return collectionView.bounds.size
    }
}
