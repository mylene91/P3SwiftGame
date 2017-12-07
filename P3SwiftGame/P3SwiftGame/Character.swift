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

    
    init(typeclass: String, name: String, weapon: Weapon, maxlife: Int) {
        self.typeClass = typeclass
        self.name = name
        self.weapon = weapon
        self.maxLife = maxlife
    }
    
    func attack(_ target: Character) {
        let damage = weapon.damage
        target.life -= damage
    
        print("\(target.name) has lose \(weapon.damage) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
    } // end attack()

    
    func presentation() -> String {
        return "Name: \(name)(\(self.typeClass)) - Life: [\(life)/\(maxLife)] -  Weapon: \(weapon.name)."
    }
    func giftWeapon() {
        let giftOrNotGift = Int(arc4random_uniform(99))
        if giftOrNotGift < 33 {
            print("Oh ! Voici un Coffre ! 🎁 ")
            self.weapon = GiftSurprise()
            print("Bravo tu as eu un kdo ;)")
            print("\(self.name) est maintenant équipé de \(self.weapon.name) qui inflige \(self.weapon.damage)")
           
            
        }
    }

} // end Character

