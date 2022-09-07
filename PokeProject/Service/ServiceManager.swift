//
//  ServiceManager.swift
//  PokeProject
//
//  Created by Arda Poyraz on 2.09.2022.
//

import Foundation

class ServiceManager {
    
    func getPokemonData(url: String, _ completion : @escaping ([Pokemon]) -> () )  {
        NetworkService(url).fetchPokemonData() { PokeList, responseError in
            let list : [Pokemon] = PokeList!
            completion(list)
        }
    }
}
