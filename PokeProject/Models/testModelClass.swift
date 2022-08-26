//
//  testModelClass.swift
//  PokeProject
//
//  Created by Arda Poyraz on 7.07.2022.
//

import Foundation
import UIKit

struct pokeModel: Codable {
    let pokeID: Int?
    let pokeName: String?
    let image: SomeImage?
    
}

public struct SomeImage: Codable {
    let photo: Data
    public init(photo: UIImage)  {
        self.photo = photo.pngData()!
    }
}
