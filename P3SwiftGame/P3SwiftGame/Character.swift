//
//  Character.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// character's main functions: presentation, attack, heal
class Character {
    var typeClass: String
    var name: String
    var life: Int = 100
    let maxLife: Int
    var weapon: Weapon
    
    convenience init() {
        self.init(typeclass: "",name: "", weapon: Axe(), maxlife: 0)
    }
    
    init(typeclass: String, name: String, weapon: Weapon, maxlife: Int) {
        self.typeClass = typeclass
        self.name = name
        self.weapon = weapon
        self.maxLife = maxlife
    }
    
    func attack(target: Character) {
        let damage = weapon.damage
        target.life -= damage
        
        if target.life < 0 {
            target.life = 0
            print("\(target.name) is dead.")
            }
            // idea: remove.target.team if target.life = 0
            // print(target.life) test OK
        
        
        print("\(target.name) has lose \(weapon.damage) points of life: [\(target.life)/\(target.maxLife)]")
    } // end attack()
    
    
    func presentation() {
        print("Name: \(name)(\(self.typeClass)) - Life: [\(life)/\(maxLife)] -  Weapon: \(weapon.name).")
    }

    
    
    
    
} // end Character
