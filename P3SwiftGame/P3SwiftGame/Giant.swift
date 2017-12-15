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
        // mettre un if ; si target a protectHeal: true alors weapon arme - 5
        if self.lightningShield == 3 && target.protectHeal == true {
            print("⚡️⚡️⚡️\(self.name) a \(lightningShield)/3 charge(s) de bouclier de foudre⚡️⚡️⚡️")
            print("⚡️⚡️⚡️\(self.name) va consumer ses boucliers de foudre et faire 3x les dégats de son arme (\(weapon.damage))⚡️⚡️⚡️")
            // on remet le compteur à 0
            lightningShield = 0
            var damageOfWeapon = weapon.damage
            damageOfWeapon *= 3
            // enlever les 5 pts de protection du bouclier du heal
            damageOfWeapon -= 5
            target.life -= damageOfWeapon
            
            // verification print("\(target.name) has lose \(weapon.damage)*3 = \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            print("\(target.name) has lost \(damageOfWeapon) points of life (5 pts absorb): [\(target.life)/\(target.maxLife)]." + "\n")
            
        } else if target.protectHeal == true {
            print("Ce personnage dispose d'un bouclier qui absorbe 5 pts de dégats")
            var damageOfWeapon = weapon.damage
            damageOfWeapon -= 5
            target.life -= damageOfWeapon
            //on rajoute une charge de bouclier de foudre
            lightningShield += 1
            print("\(target.name) has lost \(damageOfWeapon) dont 5 points de degats absorbés: l'arme a fait \(weapon.damage)")
            print("\(self.name) a \(lightningShield)/3 charge(s) de bouclier de foudre")
            
        } else if self.lightningShield == 3 {
            print("⚡️⚡️⚡️\(self.name) a \(lightningShield)/3 charge(s) de bouclier de foudre⚡️⚡️⚡️")
            print("⚡️⚡️⚡️\(self.name) va consumer ses boucliers de foudre et faire 3x les dégats de son arme (\(weapon.damage))⚡️⚡️⚡️")
            // on remet le compteur à 0
            lightningShield = 0
            var damageOfWeapon = weapon.damage
            damageOfWeapon *= 3
            target.life -= damageOfWeapon
            // verification print("\(target.name) has lose \(weapon.damage)*3 = \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            print("\(target.name) has lost \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            
        } else {
            let damageOfWeapon = weapon.damage
            print ("\(target.life)")
            target.life -= damageOfWeapon
            
            print("\(target.name) has lost \(damageOfWeapon) points of life: [\(target.life)/\(target.maxLife)]." + "\n")
            //on rajoute une charge de bouclier de foudre
            lightningShield += 1
            print("\(self.name) a \(lightningShield)/3 charge(s) de bouclier de foudre" + "\n")
        }
        
    } // end attack()
    
} // end Giant
