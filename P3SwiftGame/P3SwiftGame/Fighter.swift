//
//  Fighter.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// character Fighter
class Fighter: Character {
    
    init(name: String){
        super.init(name: name, weapon: Sword(), maxlife: 100)
    }
    
    /*
    override func attack(target: Character) {
        let attackSword = Sword()
        target.life -= attackSword.damage
        print("\(target.name) has lose \(attackSword.damage) points of life: [\(target.life)/\(target.maxLife)]")
    } // end attack()
    */
    
} // end Fighter
