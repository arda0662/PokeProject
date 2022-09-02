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
        AF.request(baseURL, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil, interceptor: nil).response
            { (responseData) in
            guard let data = responseData.data else {
                let error = responseData.error
                complitionHandler(nil, error)
//                fatalError("Could not get the data")
                return
            }
                
            do {
                let decodedData = try JSONDecoder().decode(PokemonPage.self, from: data)
                self.onMain {
                    complitionHandler(decodedData.results, nil)
                }
                
            } catch {
                complitionHandler(nil,error)
            }
            }.resume()
    }
    
    func onMain(completion: @escaping () -> Void ) {
        DispatchQueue.main.async {
            completion()
        }
    }
}
