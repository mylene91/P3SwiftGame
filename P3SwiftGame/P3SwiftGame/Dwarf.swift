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
        super.init(typeclass: "Dwarf", name: name, weapon: Axe(), maxlife: 80, protectheal: false)
        self.life = 80
    }

} // end Dwarf
