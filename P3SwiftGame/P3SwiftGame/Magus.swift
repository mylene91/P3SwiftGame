//
//  Magus.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Magus owns a magic wand - No damage, healing power
class Magus: Character {
    
    init(name: String){
        super.init(typeclass: "Magus", name: name, weapon: MagicWand(), maxlife: 90, protectheal: false)
    }
    
    // override the principal attack function to be sure the magus can only heal without attacking
    override func attack(_ target: Character) {
        let healCharacter = randomHeal()
        target.life += healCharacter
        
        // If the character's targeted is superior to his maximal life, then the heal life doesn't exceed that last value
        if target.life > target.maxLife {
            target.life = target.maxLife
        }
        print("\(name) heals \(target.name) for +\(healCharacter) lifepoints. NOW : \(target.name)(\(target.typeClass)) have [\(target.life)/\(target.maxLife)] lifepoints." + "\n")

    } // end heal()
    
    
    func randomHeal() -> Int {
        return Int(arc4random_uniform(UInt32(+15))+5)
    } // end randomHeal()
    
    // The magus can only heal, he get's asked to heal the other members of his team too from 5 points.
    override func giftWeapon() {
        let giftOrNotGift = Int(arc4random_uniform(99))
        print(giftOrNotGift)
        if giftOrNotGift < 40 {
            print("Oh! Here is a gift box! ! 🎁 ")
            print("The mage has a new spell: he now has a shield that absorbs 5 damage points.")
            protectHeal = true
            print(self.protectHeal)
            print("Your Magus \(self.name) now has a shield that absorbs 5 damage." + "\n")
            
            }
    }
    
} // end Magus
