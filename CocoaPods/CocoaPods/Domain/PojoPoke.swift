//
//  PojoPoke.swift
//  CocoaPods
//
//  Created by Pablo Rosalvo on 21/11/2018.
//  Copyright © 2018 Pablo Rosalvo. All rights reserved.
//
import Foundation
import Unbox

struct Poke : Unboxable  {
    
    var cards:[Cards]
    
    init(unboxer: Unboxer) throws {
        
        self.cards = try unboxer.unbox(key: "cards")
        
    }
    
    init() {
        
        self.cards = []
        
    }
}

struct Cards : Unboxable{
    
    var name:String
    
    var imageUrl:String
    
    init(unboxer: Unboxer) throws {
      
        self.name = try unboxer.unbox(key: "name")
        self.imageUrl = try unboxer.unbox(key: "imageUrl")
    }
    
    init (name: String, imageUrl:String) {
       
        self.name = name
        self.imageUrl = imageUrl
    }
    
    init () {
        
        self.name = ""
        self.imageUrl  = ""
    }
}
