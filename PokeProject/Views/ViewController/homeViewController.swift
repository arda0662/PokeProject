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
//    private let dataCollectionView = DataCollectionView()
    var homeViewModel : HomeViewModel = HomeViewModel()
    var width : CGFloat?
    
    //private let dataCollectionview:
    //arda

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.title = "PokeDex"
//        DispatchQueue.main.async {
//            self.homeViewModel.getPokemons() { pokemons in
//                self.pokemonList = pokemons
//                self.pokeCollectionView.reloadData()
//            }
//        }
        homeViewModel.getTheData() {
            self.pokemonList = self.homeViewModel.PokemonList
            DispatchQueue.main.async {
                self.pokeCollectionView.reloadData()
            }
        }
        setupUI()

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
        print("ERRRRRRRRRRRORRRR")
    }
    
    private func configureBackButton() {
        let backButtonText = UIBarButtonItem(title: "PokeDex", style: .plain, target: nil, action: .none)
        backButtonText.setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Helvetica-Bold", size: 16.5)!], for: .normal)
        navigationItem.backBarButtonItem = backButtonText
        navigationItem.backBarButtonItem?.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

//extension homeViewController: DataCollectionViewOutput {
//    func onSelected(item: Pokemon) {
//        print(item.id ?? "")
//    }
//}

extension homeViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("KkKKKKKK")
//        print(pokemonList!)
        print("KkKKKKKK")
        return pokemonList!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configure(with: UIImage(named: "AnthonyKiedis")!, with: width!)
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 12
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        //işine yarayacak
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else { return }
        self.navigationController?.pushViewController(detailVC, animated: true)
        }

}
