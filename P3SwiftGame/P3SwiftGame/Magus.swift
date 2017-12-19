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
        self.life = 90
    }
    
    // override the principal attack function to be sure the magus can only heal without attacking
    override func attack(_ target: Character) {
        //let healTeam: Int = randomHeal()
        let healCharacter = randomHeal()
        target.life += healCharacter
        
        // If the character's targeted is superior to his maximal life, then the heal life doesn't exceed that last value
        if target.life > target.maxLife {
            target.life = target.maxLife
            // print(target.life) verif ok
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
            print("Oh ! Voici un Coffre ! 🎁 ")
            print("Le mage a un nouveau sort il pose un bouclier qui absorbe 5 pts de degats en plus de son heal !")
            protectHeal = true
            print(self.protectHeal)
            print("Ton mage \(self.name) a maintenant un bouclier qui absorbe 5 pts de dégats !")
            
            }
    }
    
} // end Magus
