//
//  UICollectionViewModel.swift
//  News
//
//  Created by 宋文通 on 2018/5/23.
//  Copyright © 2018年 tempOrganization. All rights reserved.
//

import Foundation
import CoreGraphics
import UIKit
protocol UICollectionViewModel {
    var sections:[UICollectionViewSectionModel]{get set}
}
protocol UICollectionViewCellSizeModel {//大小
    var size:CGSize{get set}
}
class DefaultUICollectionViewModel: NSObject,UICollectionViewModel {
    var sections:[UICollectionViewSectionModel] = []
    func model(for indexPath:IndexPath) -> UICollectionViewCellModel {
        let model = sections[indexPath.section].items[indexPath.item]
        return model
    }
}
extension UICollectionView{
    func dequeueReusableCell(withReuseIdentifier model: UICollectionViewCellModel, for indexPath: IndexPath) -> UICollectionViewCell{
        let cell = dequeueReusableCell(withReuseIdentifier: model.reuseId, for: indexPath)
        if var pc = cell as? UICollectionViewCellModelAcceptProtocol{
            pc.cellModel = model
        }
        return cell
    }
}
