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
    var protectHeal: Bool

    
    init(typeclass: String, name: String, weapon: Weapon, maxlife: Int, protectheal: Bool) {
        self.typeClass = typeclass
        self.name = name
        self.weapon = weapon
        self.maxLife = maxlife
        self.protectHeal = protectheal
    }
    
    func attack(_ target: Character) {
        // If the Magus's shield is activated (true) then he absorbs 5 damage points
        if target.protectHeal == true {
            print("Ce personnage dispose d'un bouclier qui absorbe 5 pts de dégats")
            var damageOfWeapon = weapon.damage
            damageOfWeapon -= 5
            target.life -= damageOfWeapon
            print("\(target.name) has loose \(damageOfWeapon) dont 5 points de degats absorbés: l'arme a fait \(weapon.damage)")
        } else {
            let damage = weapon.damage
            target.life -= damage
            print("\(target.name) has lose \(weapon.damage) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
        }
        
    } // end attack()

    
    func presentation() -> String {
        return "Name: \(name)(\(self.typeClass)) - Life: [\(life)/\(maxLife)] -  Weapon: \(weapon.name) - protectHeal ? : \(protectHeal)."
    }
    
    // throw random to know if the character can have a chest containing a Giftsurprise
    func giftWeapon() {
        let giftOrNotGift = Int(arc4random_uniform(99))
        print(giftOrNotGift)
        // 40% chances to have a chest
        if giftOrNotGift < 40 {
            print("Oh ! Voici un Coffre ! 🎁 ")
            // New weapon attributed to the character
            self.weapon = GiftSurprise()
            print("\(self.name) est maintenant équipé de \(self.weapon.name) qui inflige \(self.weapon.damage) dégâts")
        }
    }

} // end Character

