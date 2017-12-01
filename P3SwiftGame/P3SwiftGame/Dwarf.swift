//
//  Dwarf.swift
//  P3SwiftGame
//
//  Created by Pro on 01/12/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Dwarf: fights with an axe
class Dwarf: Character {
    
    init(name: String){
        super.init(name: name, weapon: Axe(), maxlife: 80)
        self.life = 80
    }
    
    override func attack(target: Character) {
        let axe = Axe()
        target.life -= axe.damage
        print("\(target.name) has lose \(axe.damage) points of life: [\(target.life)/\(target.maxLife)]")
    } // end attack()
    

} // end Dwarf
