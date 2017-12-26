//
//  Giant.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Giant (hand-to-hand fighting)
class Giant: Character {
    var lightningShield = 0
    
    
    init(name: String){
        super.init(typeclass: "Giant",name: name, weapon: HandFight(), maxlife: 90, protectheal: false)
    }
    
    override func attack(_ target: Character) {
        // If the giant has his lightningshield at 3 and the magus's protectheal is activated, damages get multiplied by 3 and the shield gets -5
        if self.lightningShield == 3 && target.protectHeal == true {
            print("⚡️⚡️⚡️\(self.name) has \(lightningShield)/3 charge(s) of lightning shield⚡️⚡️⚡️")
            print("⚡️⚡️⚡️\(self.name) will burn his shield. His weapon will do 3x damage (\(weapon.damage))⚡️⚡️⚡️")
            lightningShield = 0
            var damageOfWeapon = weapon.damage
            damageOfWeapon *= 3
            // remove the 5 points of protection of the shield of the mage
            damageOfWeapon -= 5
            target.life -= damageOfWeapon
            print("\(target.name) has lost \(damageOfWeapon) points of life (5 pts absorb): [\(target.life)/\(target.maxLife)]." + "\n")
            
        } else if target.protectHeal == true {
            print("This character has a shield that absorbs 5 pts of damage")
            var damageOfWeapon = weapon.damage
            damageOfWeapon -= 5
            target.life -= damageOfWeapon
            // we add a charge to the lightning shield
            lightningShield += 1
            print("\(target.name) has lost \(damageOfWeapon) including  5 points of damage absorbed (The weapon did \(weapon.damage))")
            print("\(self.name) has \(lightningShield)/3 charge(s) of active lightning shield")
            
        } else if self.lightningShield == 3 {
            print("⚡️⚡️⚡️\(self.name) has \(lightningShield)/3 charge(s) of lightning shield⚡️⚡️⚡️")
            print("⚡️⚡️⚡️\(self.name) will burn his shield. His weapon will do 3x damage (\(weapon.damage))⚡️⚡️⚡️")
            lightningShield = 0
            var damageOfWeapon = weapon.damage
            damageOfWeapon *= 3
            target.life -= damageOfWeapon
            print("\(target.name) has lost \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            
        } else {
            let damageOfWeapon = weapon.damage
            print ("\(target.life)")
            target.life -= damageOfWeapon
            print("\(target.name) has lost \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            // we add a charge to the lightning shield
            lightningShield += 1
            print("\(self.name) has \(lightningShield)/3 charge(s) of lightning shield" + "\n")
        }
        
    } // end attack()
    
} // end Giant
