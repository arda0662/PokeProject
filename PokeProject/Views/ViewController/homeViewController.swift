//
//  firstViewController.swift
//  PokeProject
//
//  Created by Arda Poyraz on 6.07.2022.
//

import UIKit

class homeViewController: UIViewController  {
    @IBOutlet var pokeCollectionView : UICollectionView!
    
    var pokemonList = [Pokemon]()
//    private let dataCollectionView = DataCollectionView()
    var homeViewModel : HomeViewModel = HomeViewModel()
    var width : CGFloat?
    
    //private let dataCollectionview:
    //arda

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
        self.title = "PokeDex"
        getData()
        setupUI()

    }
     
    private func setupUI() {
        configureCollectionView()
        configureBackButton()
    }
    
    private func getData() {
        homeViewModel.onComplete = { [weak self] in
            DispatchQueue.main.async {
                self?.pokemonList = (self?.homeViewModel.PokemonList)!
                print("444444444444444")
                self?.pokeCollectionView.reloadData()
            }
        }
        self.homeViewModel.fetchData()
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



extension homeViewController : UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pokemonList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.backgroundColor = .blue
        cell.layer.cornerRadius = 12
        let poke = pokemonList[indexPath.item]
        cell.pokeName.text = poke.name
        let pokeId = homeViewModel.getPokemonIdFromURL(pokemonUrl: poke.url)
        let imageUrl = "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/\(pokeId).png"
        cell.configure(with: imageUrl, pokeId: pokeId, with: width!)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        //işine yarayacak
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailsVC") as? detailsVC else { return }
        self.navigationController?.pushViewController(detailVC, animated: true)
        }

}
