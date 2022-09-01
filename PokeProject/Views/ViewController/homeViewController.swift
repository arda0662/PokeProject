//
//  firstViewController.swift
//  PokeProject
//
//  Created by Arda Poyraz on 6.07.2022.
//

import UIKit

class homeViewController: UIViewController  {
    @IBOutlet var pokeCollectionView : UICollectionView!
    
    var pokemonList : [Pokemon]!
    private let dataCollectionView = DataCollectionView()
    public var width : CGFloat?
    
    //private let dataCollectionview:
    //arda

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.view.backgroundColor = .red
        self.title = "PokeDex"
    }
     
    private func setupUI() {
        configureCollectionView()
        // configureBackButton()
    }
    
    private func configureCollectionView() {
        pokeCollectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: "CollectionViewCell")
        pokeCollectionView.delegate = dataCollectionView
        pokeCollectionView.dataSource = dataCollectionView
        dataCollectionView.delegate = self
        width = (UIScreen.main.bounds.width - 30)/2
        DataCollectionView.configureDataCollectionView(collection: pokeCollectionView, width: width!)
        DataCollectionView.configureBackButton(VC: self)

    }
    
//    private func configureBackButton() {
//
////        navigationController?.navigationBar.titleTextAttributes = [.font : UIFont(name: "MarkerFelt-Thin", size: 20)!]
//
//    }
}

extension homeViewController: DataCollectionViewOutput {
    func onSelected(item: Pokemon) {
        print(item.id ?? "")
    }
}

//extension homeViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 20
//    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
//        cell.configure(with: UIImage(named: "AnthonyKiedis")!, with: width!)
//        cell.backgroundColor = .blue
////        cell.contentView.backgroundColor = .blue
//        cell.layer.cornerRadius = 12
//        return cell
//    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        //işine yarayacak
//        print("ardda")
//
////        let rootVC = detailsVC()
//        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else { return }
//        self.navigationController?.pushViewController(detailVC, animated: true)
    
//        self.navController
//        let navVC = UINavigationController(rootViewController: rootVC)
//        navVC.modalPresentationStyle = .fullScreen
//        present(navVC, animated: true)
        
        

//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else {
//            return
//        }
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        //}
//        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
//            guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else {
//                return
//            }
//            present(vc, animated: true)
//        }

    
    //}
