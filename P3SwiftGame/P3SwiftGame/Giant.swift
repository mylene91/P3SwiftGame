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
    
    init(name: String){
        super.init(typeclass: "Giant",name: name, weapon: HandFight(), maxlife: 100)
    }
    
    /*
    override func attack(target: Character) {
        let attackHandToHand = HandFight()
        target.life -= attackHandToHand.damage
        print("\(target.name) lost \(attackHandToHand.damage) lifepoints: [\(target.life)/\(target.maxLife)]")
    } // end attack()
    */
    
} // end Giant
