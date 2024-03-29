//
//  testModelClass.swift
//  PokeProject
//
//  Created by Arda Poyraz on 7.07.2022.
//

import Foundation
import UIKit

struct PokemonPage: Codable {
    let count     : Int
    let next      : String
    let results   : [Pokemon]
}


struct Pokemon: Codable, Identifiable ,Equatable {
    let id                      = UUID()
    let name                    : String
    let url                     : String
//    static var samplePokemon    = Pokemon(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")
}

struct DetailPokemon: Codable {
    let id              : Int
    let height          : Int
    let weight          : Int
    let name            : String
    let stats           : [Stat]
    let types           : [TypeElement]
    let base_experience : Int
}

struct Stat: Codable {
    let base_stat   : Int
}

struct TypeElement: Codable {
    let slot    : Int
    let type    : Species
}

struct Species: Codable {
    let name    : String
}





//public struct SomeImage: Codable {
//    let photo: Data
//    public init(photo: UIImage)  {
//        self.photo = photo.pngData()!
//    }
//}
