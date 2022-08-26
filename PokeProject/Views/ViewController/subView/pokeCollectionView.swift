//
//  pokeCollectionView.swift
//  PokeProject
//
//  Created by Arda Poyraz on 25.08.2022.
//

import Foundation
import UIKit

public var width : CGFloat?

//private func configureCollectionView() {
//    dataCollectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: "CollectionViewCell")
////    dataCollectionView.delegate = self
////    dataCollectionView.dataSource = self
//    dataCollectionView.backgroundColor = UIColor(red: 0.352, green: 0.346, blue: 0.328, alpha: 1)
//    dataCollectionView.contentInset = UIEdgeInsets(top: 8, left: 10, bottom: 20, right: 10)
//    let layout = dataCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
//    width = (UIScreen.main.bounds.width - 30)/2
//    layout.itemSize = CGSize(width: width!, height: (width!*1.1))
//    layout.minimumInteritemSpacing = 10
//    layout.minimumLineSpacing = 16
//    dataCollectionView.collectionViewLayout = layout
//    dataCollectionView.contentInsetAdjustmentBehavior = .always
//}

final class dataCollectionView: NSObject {
    private lazy var items: [pokeModel] = []
    private func configureCollectionView() {
        self.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: "CollectionViewCell")
    //    dataCollectionView.delegate = self
    //    dataCollectionView.dataSource = self
        dataCollectionView.backgroundColor = UIColor(red: 0.352, green: 0.346, blue: 0.328, alpha: 1)
        dataCollectionView.contentInset = UIEdgeInsets(top: 8, left: 10, bottom: 20, right: 10)
        let layout = dataCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        width = (UIScreen.main.bounds.width - 30)/2
        layout.itemSize = CGSize(width: width!, height: (width!*1.1))
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 16
        dataCollectionView.collectionViewLayout = layout
        dataCollectionView.contentInsetAdjustmentBehavior = .always
    }
}

extension dataCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configure(with: UIImage(named: "AnthonyKiedis")!, with: width!)
        cell.backgroundColor = .blue
//        cell.contentView.backgroundColor = .blue
        cell.layer.cornerRadius = 12
        return cell
    }
}

