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
    //Initialize two players
    var player1: Player
    var player2: Player
    var turnGame = 1
    
    init() {
        player1 = Player(nameplayer: "PLAYER 1")
        player2 = Player(nameplayer: "PLAYER 2")
    }

    // Initilization & play the game
    func initGame() {
        print("                           👾 Welcome to the game! 👾                 " + "\n" + "\n")

        // Player 1 creates a team
        print("\n" + "------------------------- \(player1.namePlayer) ------------------------------------")
        print("Create your team \(player1.namePlayer):" + "\n")
        player1.createTeamCharacters()
        
        // Player 2 creates a team
        print("--------------------------- \(player2.namePlayer) ----------------------------------")
        print("Create your team \(player2.namePlayer):" + "\n")
        player2.createTeamCharacters()
        
        print("-------------------------------------------------------------------------")
        print("                         Well, here are the teams : ")
        print("-------------------------------------------------------------------------" + "\n")
        // Display player's 1 team
        print("                     TEAM PLAYER 1: \(player1.namePlayer)")
                player1.displayTeam()
        print("-------------------------------------------------------------------------" + "\n")
        // display player's 2 team
        print("                     TEAM PLAYER 2: \(player2.namePlayer)")
                 player2.displayTeam()
        print("-------------------------------------------------------------------------" + "\n" + "\n")
    }
    
    
    // Fight
    func fight() {
        var attacking = player1
        var defending = player2
        print("                          ⚔️ ⚔️ ⚔️ START A GAME!!! ⚔️ ⚔️ ⚔️                          " + "\n")
        // As long as the player's 2 team isn't destroyed, player 1 keeps playing aginst player 2
         while !defending.team.isEmpty {
            print("---------------------------  \(attacking.namePlayer)   turn : \(turnGame)  ----------------------------" + "\n")
            print("CHOOSE A CHARACTER IN YOUR TEAM TO FIGHT: ")
            // Player 1 chooses a character to attack
            let chooseCharacter = attacking.selectCharacter()
            var index = 0
            //print(chooseCharacter.name)
            print("\n")
            
            //Here appears the chest randomly
            chooseCharacter.giftWeapon()

            
            
            // If he has chosen a Magus character then he has to choose a character of his team
                if chooseCharacter is Magus {
                        print("             🧙🏻‍♂️🍀 HEAL A CHARACTER IN YOUR TEAM 🍀🧙🏻‍♂️")
                        print("\(attacking.namePlayer) select character to heal in your team:" + "\n")
                        let target = attacking.selectCharacter()
                        // The character from class Magus is going to heal a member of his own team based on the choice of the user
                        let magus = chooseCharacter as! Magus
                        magus.attack(target)
                   
                    
                    
                // If this is another class than Magus, then the character has to choose a character to attack in the adverse teams
                } else {
                        print("---------------------------  \(player1.namePlayer) VS \(defending.namePlayer)  ----------------------------" + "\n")
                        print("CHOOSE A CHARACTER IN LA TEAM ADVERSE:")
                        // Display player's 2 team
                        defending.displayTeam()
                        // The player chooses and depending on the user's entrance, is assignated -1 (the board index always starts from 0)
                        index = Player.answerInt() - 1
                        let theTarget = defending.team[index]
                    
                        // Attack the character that has been chosen in the player's 2 team by the player 1
                        chooseCharacter.attack(theTarget)
                    
                        // If the character dies and his lifepoints turns negative, then his life goes to 0 
                        if theTarget.life <= 0 {
                            theTarget.life = 0
                    
                            // Display the dead player's name
                            print("🎚\(theTarget.name) is dead🎚" + "\n")
                            // Remove the character from the board with the index
                            defending.team.remove(at: index)
                            // Display the player's 2 team without the dead character
                            defending.displayTeam()
                            
                            
                            //ifWinner()
                         
                        } // end theTarget
                    
                    //Check if the player's 2 board is empty + erase both boards + display the winner
                    if defending.team.isEmpty{
                        let winner = attacking.namePlayer
                        attacking.team.removeAll()
                        defending.team.removeAll()
                        print("👑👑👑👑👑👑👑👑👑👑👑")
                        print(" \(winner) has win!")
                        print("👑👑👑👑👑👑👑👑👑👑👑" + "\n")
                        print("Nombre de tours 🏁: \(turnGame)" + "\n")
                        print("                           👾 END 👾                 " + "\n")
                        
                    }
     
                        turnGame += 1
                    
                } // end else
            
            //Inverse the players so the game happens alternately
            swap(&defending,&attacking)

        } // end while
    } // end fight()
} // end Game()


        


