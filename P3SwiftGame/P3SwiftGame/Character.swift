//
//  Character.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// character equipped functions: presentation, attack, heal
class Character {
    var name: String
    var life: Int = 100
    let maxLife: Int
    var weapon: Weapon
    
    
    init(name: String, weapon: Weapon, maxLife: Int) {
        self.name = name
        self.weapon = weapon
        self.maxLife = maxlife
    }
    
    
    func presentation() {
        print("Name: \(name), Life: [\(life)/\(maxLife)], Weapon: (),")
    }
    
    
    func attack(target: Character) {
        print("You Loose!")
    }
    
    
    
    
    
} // end Character
