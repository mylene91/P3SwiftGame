//
//  Game.swift
//  P3SwiftGame
//
//  Created by Pro on 30/11/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation

// Enter the Game
class Game {
    var player1: Player
    var player2: Player
    
    init() {
        player1 = Player(nameplayer: "Aristote")
        player2 = Player(nameplayer: "Morback")
    }
    // 1. Team
    func initGame() {
        print("Welcome to the game!")
        print("---------------------------Player 1--------------------------------------")
        print("Create your team Player 1!")
        player1.createTeamCharacters()
        
        print("---------------------------Player 2--------------------------------------")
        print("Create your team Player 2!")
        player2.createTeamCharacters()
        
        print("-------------------------------------------------------------------------")
        print("Well, here are the teams : ")
        print("-------------------------------------------------------------------------")
                player1.displayTeam()
        print("-------------------------------------------------------------------------")
                 player2.displayTeam()
        print("-------------------------------------------------------------------------")
    }
    
    
    // 2. Fight
    func fight() {
         while !player2.team.isEmpty {
            print("---------------------------\(player1.namePlayer)--------------------------------------")
            let chooseCharacter = player1.selectCharacter(player: player1)
            var index = 0
            //print(chooseCharacter.name)
            
            //IMPORTANT AS?
           if let superMagus = chooseCharacter as? Magus {
                    print("\(player1.namePlayer) select character to heal in your team")
                    for characters in player1.team {
                        print("\(characters.name) - \(characters.life)/\(characters.maxLife) select \(index)")
                        index += 1
                        
                }
            superMagus.heal(player1.team[Player.answerInt()])
                  //  magus.heal(player1.team[Player.answerInt()])
                
               
                
           } else  {
            print("----------------\(player1.namePlayer) attack \(player2.namePlayer)--------------------")
                for characters in player2.team {
                    print("Joueur adverse = \(characters.name) - \(characters.life)/\(characters.maxLife) tape \(index)")
                    index += 1
                }
                
               let theTarget = player2.team[Player.answerInt()]
               chooseCharacter.attack(target: theTarget)
            
                if theTarget.life == 0 { // test if character is dead display "DEAD" -> idea: func check if dead
                print("DEAD")
                
            } // end else
        } // end while

   // } // end fight()
    
    
    
} // end Game()


}
}
