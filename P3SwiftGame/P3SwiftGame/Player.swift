//
//  Player.swift
//  P3SwiftGame
//
//  Created by Pro on 30/11/2017.
//  Copyright © 2017 Mylene. All rights reserved.
//

import Foundation


// create player (totality: 2)
class Player {
    // 1. The player creates a team of 3 characters
    var team = [Character]()
    var namePlayer: String
    
    init(nameplayer: String) {
        self.namePlayer = nameplayer
    }
    
    // GENERAL
    static func answerInt() -> Int {
        if let answer = readLine() {
            if let reponseAnswer = Int(answer) {
                return reponseAnswer
            }
        }
        return answerInt()
    } // end answerInt()
    
    // 1. Create a team of 3 characters (add array)
    func createTeamCharacters() {
        while team.count < 3 {
            print("Choose character :"
                + "\n1. Fighter"
                + "\n2. Magus"
                + "\n3. Giant"
                + "\n4. Dwarf")
            
            if let chooseClass = readLine() {
                var character: Character
                
                switch chooseClass {
                case "1":
                    print("You have selected a Fighter" + "\n")
                    let name = nameCharacter()
                    character = Fighter(name: name)
                    team.append(character)
                case "2":
                    print("You have selected a Magus" + "\n")
                    let name = nameCharacter()
                    character = Magus(name: name)
                    team.append(character)
                case "3":
                    print("You have selected a Giant" + "\n")
                    let name = nameCharacter()
                    character = Giant(name: name)
                    team.append(character)
                case "4":
                    print("You have selected a Dwarf" + "\n")
                    let name = nameCharacter()
                    character = Dwarf(name: name)
                    team.append(character)
                default:
                    print("I don't understand, please try again.")
                } // end switch
            } //end if
        } // end while count
    } // end createTeamCharacters()
    
    // 1. Player: Choose his name (->string)
    func nameCharacter() -> String {
        var validName = true
        var chooseName = String()
        
        repeat{
            print("NAME IT :")
            if let name = readLine() {
                if name != "" {
                    print("Name:  \(name)." + "\n")
                    validName = true
                    chooseName = name
                } else {
                    validName = false
                    print("I don't understand, please try again." + "\n")
                }
            } else {
                validName = false
                print("I don't understand, please try again." + "\n")
            }
        } while !validName
        return chooseName
    } // end nameCharacter()
    
    // 1. Presentation Team
    func displayTeam() {
        for character in team {
            character.presentation()
        }
    } // end displayTeam()
    
    // 2. Select a character in order to fight the adverse team
    func selectCharacter(player: Player) -> Character {
        let characterToFight = Character()
        
        displayTeam()
        let userChoice = Player.answerInt()
        switch userChoice {
        case 1:
            print("You have chosen \(player.team[0].name)-\(player.team[0].typeClass) - [\(player.team[0].life)/\(player.team[0].maxLife)]!")
            
        case 2:
            print("You have chosen \(player.team[1].name) - \(player.team[1].typeClass)- [\(player.team[1].life)/\(player.team[1].maxLife)]!")
            
        case 3:
            print("You have chosen \(player.team[2].name) - \(player.team[0].typeClass) - [\(player.team[2].life)/\(player.team[2].maxLife)]!")

        default:
            print("I don't understand, please try again.")
        }
        return characterToFight
        
    }
    
} // end Player
