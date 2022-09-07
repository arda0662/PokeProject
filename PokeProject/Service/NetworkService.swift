//
//  NetworkService.swift
//  PokeProject
//
//  Created by Arda Poyraz on 1.09.2022.
//

import Foundation
import Alamofire

class NetworkService {
    // link
    
    fileprivate var baseURL = ""
    
    init(_ baseURL: String) {
        self.baseURL = baseURL
    }
    
    typealias completionPokemonData = ([Pokemon]?,Error?) -> Void
    
    func fetchPokemonData(complitionHandler: @escaping completionPokemonData)  {
        AF.request(baseURL).response { (response) in
            guard let data = response.data else {
                fatalError("Could not get the data")
            }
            do {
                let decodedData = try JSONDecoder().decode(PokemonPage.self, from: data)
                DispatchQueue.main.async {
                    print(decodedData.results)
                    complitionHandler(decodedData.results, nil)
                }
            } catch {
                DispatchQueue.main.async {
                    complitionHandler(nil, error)                }
            }
        }
    }
}
