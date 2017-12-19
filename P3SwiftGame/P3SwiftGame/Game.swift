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
    //on initialise deux joueurs
    var player1: Player
    var player2: Player
    var turnGame = 1
    
    init() {
        player1 = Player(nameplayer: "")
        player2 = Player(nameplayer: "")
    }

    // initilization & play the Game
    func initGame() {
        print("                           👾 Welcome to the game! 👾                 " + "\n" + "\n")
        //player 1 & player 2 se nomment
        print("Player 1: Enter your name : ")
        player1.namePlayer = readLine()!
        print("Good, your name is: \(player1.namePlayer)" + "\n")
        print("Player 2: Enter your name : ")
        player2.namePlayer = readLine()!
        
        
        //le player 1 créer son équipe
        print("\n" + "------------------------- \(player1.namePlayer) ------------------------------------")
        print("Create your team \(player1.namePlayer):" + "\n")
        player1.createTeamCharacters()
        
        // le joueur 2 créer son équipe
        print("--------------------------- \(player2.namePlayer) ----------------------------------")
        print("Create your team \(player2.namePlayer):" + "\n")
        player2.createTeamCharacters()
        
        print("-------------------------------------------------------------------------")
        print("                         Well, here are the teams : ")
        print("-------------------------------------------------------------------------" + "\n")
        // display the team of player 1
        print("                     TEAM PLAYER 1: \(player1.namePlayer)")
                player1.displayTeam()
        print("-------------------------------------------------------------------------" + "\n")
        // display the team of player 2
        print("                     TEAM PLAYER 2: \(player2.namePlayer)")
                 player2.displayTeam()
        print("-------------------------------------------------------------------------" + "\n" + "\n")
    }
    
    
    // Fight
    func fight() {
        print("                          ⚔️ ⚔️ ⚔️ START A GAME!!! ⚔️ ⚔️ ⚔️                          " + "\n")
        // tant que l'équipe du player 2 n'est pas anéantie on fait jouer le player 1 contre le player 2
         while !player2.team.isEmpty {
            print("---------------------------  \(player1.namePlayer)   turn : \(turnGame)  ----------------------------" + "\n")
            print("CHOOSE A CHARACTER IN YOUR TEAM TO FIGHT: ")
            // le player 1 choisi avec quel personnage attaquer
            let chooseCharacter = player1.selectCharacter()
            var index = 0
            //print(chooseCharacter.name)
            print("\n")
            
            //C'est ici que le coffre apparaît aléatoirement
            chooseCharacter.giftWeapon()

            
            
            // s'il a choisi un character de classe mage alors il doit choisir un personnage de son équipe
                if chooseCharacter is Magus {
                        print("             🧙🏻‍♂️🍀 HEAL A CHARACTER IN YOUR TEAM 🍀🧙🏻‍♂️")
                        print("\(player1.namePlayer) select character to heal in your team:" + "\n")
                        let target = player1.selectCharacter()
                        // le personnage de classe Mage(as!) va heal un membre de son équipe selon le choix de l'utilisateur (target)
                        let magus = chooseCharacter as! Magus
                        magus.attack(target)
                   
                    
                    
                // si c'est une autre classe que le mage, alors le personnage va choisir un personnage à attaquer dans l'équipe adverse
                } else {
                        print("---------------------------  \(player1.namePlayer) VS \(player2.namePlayer)  ----------------------------" + "\n")
                        print("CHOOSE A CHARACTER IN LA TEAM ADVERSE:")
                        // on affiche l'équipe du player 2
                        player2.displayTeam()
                        // le joueur choisi et selon l'entrée de l'utilisateur on assigne - 1 car l'index du tableau commence toujours à 0
                        index = Player.answerInt() - 1
                        let theTarget = player2.team[index]
                    
                        // on attaque le personnage qui a été choisi dans l'équipe du joueur 2 par le joueur 1
                        chooseCharacter.attack(theTarget)
                    
                        // si le personnage meurt et que sa vie passe en negatif alors sa vie passe à 0
                        if theTarget.life <= 0 {
                            theTarget.life = 0
                    
                            // on affiche le nom du joueur qui est mort
                            print("🎚\(theTarget.name) is dead🎚" + "\n")
                            // on enlève ce personnage du tableau avec l'index
                            player2.team.remove(at: index)
                            // on affiche l'équipe du joueur 2 sans le personage qui est mort
                            player2.displayTeam()
                            //print(player2.team)
                            
                            ifWinner()
                         
                        } // end theTarget
     
                        turnGame += 1
                    
                } // end else
            
            //inverser les joueurs pour que la partie se déroule à tour de rôle
            swap(&player2,&player1)

        } // end while
    } // end fight()
    

    //verifier si le tableau du joueur 2 est vide + supprimer les deux tableaux + afficher le vainqueur
    func ifWinner() {
        if player2.team.isEmpty{
            let winner = player1.namePlayer
            player1.team.removeAll()
            player2.team.removeAll()
            print("👑👑👑👑👑👑👑👑👑👑👑")
            print(" \(winner) has win!")
            print("👑👑👑👑👑👑👑👑👑👑👑" + "\n")
            print("Nombre de tours 🏁: \(turnGame)" + "\n")
            print("                           👾 END 👾                 " + "\n")
            
        }
    } // end if Winner()

} // end Game()


        


