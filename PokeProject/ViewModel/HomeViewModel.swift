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
    var onComplete                      : ( () -> Void )?
    
    func getTheData(completion: () -> ()) {

        serviceManager.getPokemonData(url: self.baseUrl, { [weak self] pokelist in
//            self?.PokemonList = tempList
            DispatchQueue.main.async {
                self?.PokemonList = pokelist
//                self?.setPokemonList(poke: pokelist)
            }
//            self?.setPokemonList(poke: tempList)
            self?.onComplete?()
                print(pokelist)
                print("EEEEEEEERRRRRRROOOOOOOORRRRRRR")

        })
        
        
//        serviceManager.getPokemonData(url: baseUrl) { [weak self] pokelist in
//                self?.PokemonList = pokelist
//                print(pokelist)
//                print("EEEEEEEERRRRRRROOOOOOOORRRRRRR")
//
//        }
//            DispatchQueue.main.async {
//                self?.PokemonList = pokelist
//                print(pokelist)
//                print("EEEEEEEERRRRRRROOOOOOOORRRRRRR")
//            }
//        }
    }
    
//    func setPokemonList(poke : [Pokemon]) {
//        self.PokemonList = poke
//    }
//    
//    func getPokemons(Completion: @escaping ([Pokemon]) -> ()) {
//        Completion(PokemonList)
//    }
    
}
