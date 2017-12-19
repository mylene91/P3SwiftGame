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
    // The player creates a team of 3 characters
    var team = [Character]()
    static var uniqueName = [String]()
    var namePlayer: String
    
    //initialization of nameplayer
    init(nameplayer: String) {
        self.namePlayer = nameplayer
        
    }
   
    //Function so the user returns only a whole number
    static func answerInt() -> Int {
        if let answer = readLine() {
            if let reponseAnswer = Int(answer) {
                return reponseAnswer
            }
        }
        return answerInt()
    } // end answerInt()
    
    // Create a team of 3 characters (add array)
    func createTeamCharacters() {
        // As long as the team doesn't count 3 characters, offer the player to 1. select a character 2. name it
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
                    //add the character to the array
                    team.append(character)
                case "2":
                    print("You have selected a Magus" + "\n")
                    let name = nameCharacter()
                    character = Magus(name: name)
                    //add the character to the array
                    team.append(character)
                case "3":
                    print("You have selected a Giant" + "\n")
                    let name = nameCharacter()
                    character = Giant(name: name)
                    //add the character to the array
                    team.append(character)
                case "4":
                    print("You have selected a Dwarf" + "\n")
                    let name = nameCharacter()
                    character = Dwarf(name: name)
                    //add the character to the array
                    team.append(character)
                default:
                    print("I don't understand, please try again.")
                } // end switch
            } //end if
        } // end while count
    } // end createTeamCharacters()
    
    // function to name the character
    func nameCharacter() -> String {
            print("NAME IT :")
            // ask character's name
            let name = readLine()!
            // ask checkName to know if the name isn't in the array
            let unNom = checkName(names: name)
                if unNom == false {
                    return nameCharacter()
                }
         return name
    } // end nameCharacter()
    
    // function to check if name has correct
    func checkName(names: String) -> Bool {
        if names.count < 2 {
            print("please enter at least 2 characters :")
            return false
        }
        
        for userNameArray in Player.uniqueName {
                if userNameArray.lowercased() == names.lowercased() {
                    print("please, choose another name :")
                    return false
                }
        }
        Player.uniqueName.append(names)
        return true
    } // end checkName
    
    
    // Presentation Team
    func displayTeam() {
        var enterNumber = 1
        for character in team {
            print("\(enterNumber) - \(character.presentation())")
            enterNumber += 1
        }
    } // end displayTeam()
    
    
    // Select a character in order to fight the adverse team
    func selectCharacter() -> Character {
        // creation of a container to stock the character
        var characterToFight = Character(typeclass: "", name: "", weapon: Axe(), maxlife: 0, protectheal: false)
        
        //Show both teams to make a choice
         displayTeam()
        //the player enters a value
        let userChoice = Player.answerInt()
        // recup valeur dans le switch on l'assigne pour l'équipe adverse
        switch userChoice {
        case 1:
            // I assign the character of the team in the container
            characterToFight = team[0]
            print("You have chosen \(team[0].name)-\(team[0].typeClass) - [\(team[0].life)/\(team[0].maxLife)]!")
        case 2:
            characterToFight = team[1]
            print("You have chosen \(team[1].name) - \(team[1].typeClass)- [\(team[1].life)/\(team[1].maxLife)]!")
        case 3:
            characterToFight = team[2]
            print("You have chosen \(team[2].name) - \(team[0].typeClass) - [\(team[2].life)/\(team[2].maxLife)]!")
            
        default:
            print("I don't understand, please try again.")
        }
        // I return the container (having the selected player)
        return characterToFight
        
    }
    
} // end Player



