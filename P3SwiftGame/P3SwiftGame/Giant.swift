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
    
} // end Giant
