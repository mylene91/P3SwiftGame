//
//  Magus.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Magus is eqquiped with magic wand - No damage, healing power
class Magus: Character {
    
    init(name: String){
        super.init(name: name, weapon: MagicWand(), maxlife: 90)
        self.life = 90
        
    }
    
    func heal(target: Character) {
        //let healTeam: Int = randomHeal()
        let healTeam = 120
        target.life += healTeam
        print("\(name) healing \(target.name) for +\(healTeam) pts. NOW : life [\(target.life)/\(target.maxLife)].")
  
        if target.life > target.maxLife {
            target.life = target.maxLife
            print(target.life)
        } // end if
        
    } // end heal()
    
    // use later
    func randomHeal() -> Int {
        return Int(arc4random_uniform(UInt32(+15))+5)
    } // end randomHeal()
    
} // end Magus
