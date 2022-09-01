//
//  ServiceManager.swift
//  PokeProject
//
//  Created by Arda Poyraz on 2.09.2022.
//

import Foundation

class ServiceManager {
    
    func getPokemonData(url: String) -> [Pokemon]{
        
        let pokemonData : PokemonPage = NetworkService(url).fetchPokemonData() //as! PokemonPage
        let pokemonList = pokemonData.results
    }
}
