//
//  GiftSurprise.swift
//  P3SwiftGame
//
//  Created by Pro on 06/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

class GiftSurprise: Weapon {
    
    init() {
        super.init(name: randomName(), damage: damageRandom())
    }
    
    //random damage between 20 and 25
    func damageRandom() -> Int {
        return Int(arc4random_uniform(UInt32(+6))+20)
    }
    
    //random name
    func randomName() -> String {
        let arrayNameRandom = ["Candle", "Saussage", "Cupcake", "Beer"]
        let newNameRandom = arrayNameRandom[Int(arc4random_uniform(UInt32(arrayNameRandom.count)))]
        return newNameRandom
    }
    
}


