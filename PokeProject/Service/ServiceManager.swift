//
//  ServiceManager.swift
//  PokeProject
//
//  Created by Arda Poyraz on 2.09.2022.
//

import Foundation

class ServiceManager {
//    typealias =
//    var pokemonList = [Pokemon]()
    
    func getPokemonData(url: String, _ completion : @escaping ([Pokemon]) -> () )  {
//        let pokemonData: PokemonPage

        NetworkService(url).fetchPokemonData() { PokeList, responseError in
//            let pokemonData : PokemonPage = PokeDict!
            let list : [Pokemon] = PokeList!
//                print(list)
            print("222222222222222222222222222222222")
            completion(list)
//            DispatchQueue.main.async {
//                let list : [Pokemon] = PokeList!
////                print(list)
//                print("222222222222222222222222222222222")
//                completion(list)
//            }
        }
    }
}
