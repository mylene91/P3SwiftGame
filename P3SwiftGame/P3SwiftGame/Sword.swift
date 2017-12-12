//
//  Sword.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Fighter's sword
class Sword: Weapon {
    
    init() {
        super.init(name: "Sword", damage: attackDamageRandom())     }
    
    // Random damage between 10 and 15
    func attackDamageRandom() -> Int {
        return Int(arc4random_uniform(UInt32(+6))+10)
    }
} // end Sword
