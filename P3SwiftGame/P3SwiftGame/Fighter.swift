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
        super.init(typeclass: "Fighter", name: name, weapon: Sword(), maxlife: 100, protectheal: false)
    }

    
} // end Fighter
