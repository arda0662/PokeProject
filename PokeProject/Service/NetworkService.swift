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
//    typealias failurePokemonData = (PokemonPage?,Error?) -> Void
    
    func fetchPokemonData(complitionHandler: @escaping completionPokemonData)  {
        
        AF.request(baseURL).response { (response) in
            guard let data = response.data else {
                fatalError("Could not get the data")
            }
            do {
                let decodedData = try JSONDecoder().decode(PokemonPage.self, from: data)
//                print(decodedData.results)
                print("11111111111111111111111111111111111111111111111111")
//                DispatchQueue.main.async {
//                    complitionHandler(decodedData.results, nil)
//                }
                complitionHandler(decodedData.results, nil)
            } catch {
                complitionHandler(nil, error)
            }

        }
    }
}
