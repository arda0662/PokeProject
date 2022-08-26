//
//  firstViewController.swift
//  PokeProject
//
//  Created by Arda Poyraz on 6.07.2022.
//

import UIKit

class homeViewController: UIViewController  {
    @IBOutlet var pokeCollectionView : UICollectionView!
    let myData = ["First" , "Second", "Third" , "Fourth"]
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
        configureBackButton()
    }
    
    private func configureCollectionView() {
        pokeCollectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: "CollectionViewCell")
        pokeCollectionView.delegate = self
        pokeCollectionView.dataSource = self
        pokeCollectionView.backgroundColor = UIColor(red: 0.352, green: 0.346, blue: 0.328, alpha: 1)
        pokeCollectionView.contentInset = UIEdgeInsets(top: 8, left: 10, bottom: 20, right: 10)
        let layout = pokeCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        width = (UIScreen.main.bounds.width - 30)/2
        layout.itemSize = CGSize(width: width!, height: (width!*1.1))
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 16
        pokeCollectionView.collectionViewLayout = layout
        pokeCollectionView.contentInsetAdjustmentBehavior = .always
    }
    
    private func configureBackButton() {
        let backButtonText = UIBarButtonItem(title: "PokeDex", style: .plain, target: nil, action: .none)
        backButtonText.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 16.5)!], for: .normal)
        navigationItem.backBarButtonItem = backButtonText
        navigationItem.backBarButtonItem?.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//        navigationController?.navigationBar.titleTextAttributes = [.font : UIFont(name: "MarkerFelt-Thin", size: 20)!]

        
        
    }
}

extension homeViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //işine yarayacak
        print("ardda")
        
//        let rootVC = detailsVC()
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else { return }
        self.navigationController?.pushViewController(detailVC, animated: true)
    
//        self.navController
//        let navVC = UINavigationController(rootViewController: rootVC)
//        navVC.modalPresentationStyle = .fullScreen
//        present(navVC, animated: true)
        
        

//        guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else {
//            return
//        }
//        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        }
//        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell {
//            guard let vc = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else {
//                return
//            }
//            present(vc, animated: true)
//        }
}
