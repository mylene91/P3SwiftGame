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
    
    
    init(name: String, weapon: Weapon, maxlife: Int) {
        self.name = name
        self.weapon = weapon
        self.maxLife = maxlife
    }
    
    func attack(target: Character) {
        let damage = weapon.damage
        target.life -= damage
        
        if target.life < 0 {
            target.life = 0
            // idea: remove.target.team if target.life = 0
            // print(target.life) test OK
        }
        
        print("\(target.name) has lose \(weapon.damage) points of life: [\(target.life)/\(target.maxLife)]")
    } // end attack()
    
    
    func presentation() {
        print("Name: \(name) - Life: [\(life)/\(maxLife)] -  Weapon: \(weapon.name).")
    }

    
    
    
    
} // end Character
