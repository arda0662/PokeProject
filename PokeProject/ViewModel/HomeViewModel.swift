//
//  HomeViewModel.swift
//  PokeProject
//
//  Created by Arda Poyraz on 2.09.2022.
//

import Foundation
//import QuartzCore

class HomeViewModel {
    
    let baseUrl = "https://pokeapi.co/api/v2/pokemon"
    var PokemonList : [Pokemon] = []
    let serviceManager = ServiceManager()
    var onComplete : ( () -> Void )? 
    
    func fetchData() {
        serviceManager.getPokemonData(url: self.baseUrl) { [weak self] pokelist in
            self?.PokemonList = pokelist
            self?.onComplete!()
        }
    }
    
    
    func getPokemonIdFromURL(pokemonUrl: String) -> String {
        let url = URL(string: pokemonUrl)
        let id = (url?.lastPathComponent)!
        return id
    }
    
//    func setImageOfCell(cell: CollectionViewCell, url: String, width: CGFloat) {
////        guard let imageURL = URL(string: url) else {return}
//    }
}
