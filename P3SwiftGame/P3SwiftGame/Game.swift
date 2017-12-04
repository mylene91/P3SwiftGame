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
    
    init() {
        player1 = Player(nameplayer: "Aristote")
        player2 = Player(nameplayer: "Morback")
    }
    // 1. Team
    func initGame() {
        print("Welcome to the game!")
        //le player 1 créer son équipe
        print("---------------------------Player 1--------------------------------------")
        print("Create your team Player 1!")
        player1.createTeamCharacters()
        
        // le joueur 2 créer son équipe
        print("---------------------------Player 2--------------------------------------")
        print("Create your team Player 2!")
        player2.createTeamCharacters()
        
        print("-------------------------------------------------------------------------")
        print("Well, here are the teams : ")
        print("-------------------------------------------------------------------------")
        // on affiche l'équipe du joueur 1
                player1.displayTeam()
        print("-------------------------------------------------------------------------")
        // on affiche l'équipe du joueur 2
                 player2.displayTeam()
        print("-------------------------------------------------------------------------")
    }
    
    
    // 2. Fight
    func fight() {
        // tant que l'équipe du player 2 n'est pas anéantie on fait jouer le player 1 contre le player 2
         while !player2.team.isEmpty {
            print("---------------------------\(player1.namePlayer)--------------------------------------")
            // le player 1 choisi avec quel personnage attaquer
            let chooseCharacter = player1.selectCharacter(player: player1)
            var index = 0
            print(chooseCharacter.name)
            
            // s'il a choisi un character de classe mage alors il doit choisir un personnage de son équipe
                if chooseCharacter is Magus {
                        print("Bravo ! C'est un mage")
                        print("\(player1.namePlayer) select character to heal in your team")
                        for characters in player1.team {
                            print("\(characters.name) - \(characters.life)/\(characters.maxLife) select \(index)")
                            index += 1 // à voir car à l'affichage c'est 0 puis 1 puis 2
                            
                        }
                        // le personnage de classe Mage va heal un membre de son équipe selon le choix de l'utilisateur
                        chooseCharacter.attack(player1.team[Player.answerInt()])
                    
                    // si c'est une autre classe que le mage, alors le personnage va choisir un personnage à attaquer dans l'équipe adverse
                } else {
                        print("----------------\(player1.namePlayer) attack \(player2.namePlayer)--------------------")
                        // on affiche l'équipe du player 2
                        player2.displayTeam()
                        // le joueur choisi et selon l'entrée de l'utilisateur on assigne - 1 car l'index du tableau commence toujours à 0
                        index = Player.answerInt() - 1
                        let theTarget = player2.team[index]
                    
                        // on attaque le personnage qui a été choisi dans l'équipe du joueur 2 par le joueur 1
                        chooseCharacter.attack(theTarget)
                    
                        // si le personnage meurt et que sa vie passe en negatif alors sa vie passe à 0
                        if theTarget.life < 0 {
                            theTarget.life = 0
                            // on affiche la team du player 2
                            print(player2.team)
                            // on affiche le nom du joueur qui est mort
                            print("\(theTarget.name) is dead.")
                            //on affiche son index
                            print(index)
                            // .. -1 pour avoir un visu par rapport au tableau qui commence par 0
                            print(index - 1)
                            // on enlève ce personnage du tableau avec l'index
                            player2.team.remove(at: index)
                            // on affiche l'équipe du joueur 2 sans le personage qui est mort
                            player2.displayTeam()
                            print(player2.team)
                        } // end theTarget
                
                } // end else
        } // end while
    } // end fight()
} // end Game()

            
            //IMPORTANT AS?
//           if let superMagus = chooseCharacter as? Magus {
//                    print("\(player1.namePlayer) select character to heal in your team")
//                    for characters in player1.team {
//                        print("\(characters.name) - \(characters.life)/\(characters.maxLife) select \(index)")
//                        index += 1
//
//                }
//
//           superMagus.heal(player1.team[Player.answerInt()])


        


