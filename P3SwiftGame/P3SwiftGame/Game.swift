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
        player1 = Player()
        player2 = Player()
    }
    
    func initGame() {
        print("Welcome to the game!")
        print("---------------------------Player 1--------------------------------------")
        print("Create your team Player 1!")
        player1.createTeamCharacters()
        
        print("---------------------------Player 2--------------------------------------")
        print("Create your team Player 2!")
        player2.createTeamCharacters()
        
        print("-------------------------------------------------------------------------")
        print("Well: look, here are the teams : ")
        print("-------------------------------------------------------------------------")
                player1.displayTeam()
        print("-------------------------------------------------------------------------")
                 player2.displayTeam()
        print("-------------------------------------------------------------------------")
    }
    
    
    
    
    
    
} // end Game()



