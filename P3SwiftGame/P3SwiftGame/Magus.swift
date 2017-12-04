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
    
    //override func attack(target: Character) {
    //    print("Magus cannot attack")
    //}
    
    func heal(_ target: Character) {
        let healTeam: Int = randomHeal()
        //let healTeam = 120
        target.life += healTeam
        
        if target.life > target.maxLife {
            target.life = target.maxLife
            // print(target.life) verif ok
        }
        print("\(name) heals \(target.name) for +\(healTeam) lifepoints. NOW : life [\(target.life)/\(target.maxLife)].")
  
       
        
    } // end heal()
    
    // use later
    func randomHeal() -> Int {
        return Int(arc4random_uniform(UInt32(+15))+5)
    } // end randomHeal()
    
} // end Magus
