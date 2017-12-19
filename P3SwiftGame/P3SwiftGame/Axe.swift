//
//  Axe.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Dwarf's axe
class Axe: Weapon {
    
    init() {
        super.init(name: "Axe", damage: 98)//attackDamageRandom()) huge damages to test in Game()
    }
    
    // random damage between 15 and 20 
    func attackDamageRandom() -> Int {
        return Int(arc4random_uniform(UInt32(+5))+15)
    }
    
} // end Axe
