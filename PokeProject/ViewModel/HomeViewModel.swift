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
//    var onComplete                      : ( () -> Void )?
    
    
    init() {

        serviceManager.getPokemonData(url: self.baseUrl, { [weak self] pokelist in
            print("OADSFLALSFKSAFLASKFSAKDFASKF")
            self?.PokemonList = pokelist
            print("Ömer Ömer Ömer Ömer Ömer Ömer Ömer ")
//            DispatchQueue.main.async {
//                self?.PokemonList = pokelist
//                print("Ömer Ömer Ömer Ömer Ömer Ömer Ömer ")
//
//            }
//            self?.onComplete?()
//                print(pokelist)
                print("33333333333333333333333333333333333333333333333333")

        })
    }
}
