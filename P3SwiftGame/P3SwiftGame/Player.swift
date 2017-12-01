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
    // 1. Player creates team with three characters
    var teamCharacters = [Character]()
    
    
    func createTeamCharacters() {
        while teamCharacters.count < 3 {
            print("Choose character :"
                + "\n1. Fighter"
                + "\n2. Magus"
                + "\n3. Giant"
                + "\n4. Dwarf")
            
            if let choiceClass = readLine() {
                var character: Character
                
                switch choiceClass {
                case "1":
                    print("You have selected a Fighter" + "\n")
                    let name = nameCharacter()
                    character = Fighter(name: name)
                    teamCharacters.append(character)
                case "2":
                    print("You have selected a Magus" + "\n")
                    let name = nameCharacter()
                    character = Magus(name: name)
                    teamCharacters.append(character)
                case "3":
                    print("You have selected a Giant" + "\n")
                    let name = nameCharacter()
                    character = Giant(name: name)
                    teamCharacters.append(character)
                case "4":
                    print("You have selected a Dward" + "\n")
                    let name = nameCharacter()
                    character = Dwarf(name: name)
                    teamCharacters.append(character)
                default:
                    print("I don't understand, try again please.")
                } // end switch
            } //end if
        } // end while count
    } // end createTeamCharacters()
    
    // 1. Player: choose his name (->string)
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
                    print("I don't understand, try again please." + "\n")
                }
            } else {
                validName = false
                print("I don't understand, try again please." + "\n")
            }
        } while !validName
        return chooseName
    } // end nameCharacter()
    
    // 1. Presentation Team
    func displayTeam() {
        for character in teamCharacters {
            character.presentation()
        }
    } // end displayTeam()
    
    
} // end Player
