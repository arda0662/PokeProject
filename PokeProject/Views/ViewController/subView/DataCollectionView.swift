//
//  pokeCollectionView.swift
//  PokeProject
//
//  Created by Arda Poyraz on 25.08.2022.
//

//import Foundation
//import UIKit
//
//protocol DataCollectionViewProtocol {
//    func update(items: [Pokemon])
//}
//
//protocol DataCollectionViewOutput: class {
//    func onSelected(item: Pokemon)
//}
//
//
//final class DataCollectionView: NSObject {
//    private lazy var items: [Pokemon] = []
//
////    override init(pokeList: [Pokemon]) {
////        items = pokeList
////    }
//
//    weak var delegate: DataCollectionViewOutput?
//
////    self.backgroundColor = UIColor(red: 0.352, green: 0.346, blue: 0.328, alpha: 1)
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 20
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let width = (UIScreen.main.bounds.width - 30)/2
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
//        cell.configure(with: UIImage(named: "AnthonyKiedis")!, with: width)
//        cell.backgroundColor = .blue
////        cell.contentView.backgroundColor = .blue
//        cell.layer.cornerRadius = 12
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//         delegate?.onSelected(item: items[indexPath.row])
//    }
//
//    static func configureDataCollectionView(collection: UICollectionView, width: CGFloat) {
//        collection.backgroundColor = UIColor(red: 0.352, green: 0.346, blue: 0.328, alpha: 1)
//        collection.contentInset = UIEdgeInsets(top: 8, left: 10, bottom: 20, right: 10)
//        let layout = collection.collectionViewLayout as! UICollectionViewFlowLayout
//        //width = (UIScreen.main.bounds.width - 30)/2
//        layout.itemSize = CGSize(width: width, height: (width*1.1))
//        layout.minimumInteritemSpacing = 10
//        layout.minimumLineSpacing = 16
//        collection.collectionViewLayout = layout
//        collection.contentInsetAdjustmentBehavior = .always
//    }
//
//    static func configureBackButton(VC: UIViewController) {
//        let backButtonText = UIBarButtonItem(title: "PokeDex", style: .plain, target: nil, action: .none)
//        backButtonText.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 16.5)!], for: .normal)
//        VC.navigationItem.backBarButtonItem = backButtonText
//        VC.navigationItem.backBarButtonItem?.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//    }
//
//}
//extension DataCollectionView: UICollectionViewDelegate, UICollectionViewDataSource { }
//extension DataCollectionView: DataCollectionViewProtocol {
//    func update(items: [Pokemon]) {
//        self.items = items
//    }
//}

