//
//  ApiPokemon.swift
//  CocoaPods
//
//  Created by Pablo Rosalvo on 21/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//

import Foundation
import Alamofire
import Unbox

class ApiPokemon{

static func getPoke(completionHandler: @escaping ([Cards]) -> Swift.Void) {
    
    Alamofire.request("https://api.pokemontcg.io/v1/cards?count=20").responseJSON { response in
        
        if let json = response.result.value {
            
            do{
                let dict = json as? NSDictionary ?? NSDictionary()
                var poke = Poke()
                poke = try unbox(dictionary: dict as! UnboxableDictionary)
                completionHandler(poke.cards)
                
                }catch {
                    print("An error occurred: \(error)")
                
            }
            
        }
    
    }
}
    
}
