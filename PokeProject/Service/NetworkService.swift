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
    
    func fetchPokemonData() {
        AF.request(baseURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response
            { (responseData) in
            guard let data = responseData.data else {
                fatalError("Could not get the data")
            }
            do {
                let decodedData = try JSONDecoder().decode(PokemonPage.self, from: data)
                print(decodedData)
            } catch {
                print(error)
            }
        }
    }
    
    
}
