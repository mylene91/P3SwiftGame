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
        super.init(typeclass: "Magus", name: name, weapon: MagicWand(), maxlife: 90)
        self.life = 90
    }
    
    // override la func attaque principale pour être sûr que le mage ne puisse attaquer et uniquement soigner
    override func attack(_ target: Character) {
        //let healTeam: Int = randomHeal()
        let healCharacter = 120
        target.life += healCharacter
        
        // si la vie du personnage ciblé est supérieur à sa vie maximale alors le heal ne dépasse pas cette dernière valeur
        if target.life > target.maxLife {
            target.life = target.maxLife
            // print(target.life) verif ok
        }
        print("\(name) heals \(target.name) for +\(healCharacter) lifepoints. NOW : \(target.name)(\(target.typeClass)) have [\(target.life)/\(target.maxLife)] lifepoints." + "\n")



    } // end heal()
    
    // use later
    func randomHeal() -> Int {
        return Int(arc4random_uniform(UInt32(+15))+5)
    } // end randomHeal()
    
} // end Magus
