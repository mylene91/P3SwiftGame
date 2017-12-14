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
    static var uniqueName = [String]()
    var namePlayer: String
    
    //initialisation de nameplayer
    init(nameplayer: String) {
        self.namePlayer = nameplayer
        
    }
   
   
    //fonction pour que l'utilisateur renvoie uniquement un nombre entier
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
        //tant que la team ne compte pas 3 personnages propose au joueur de 1. selectionner un personnage 2. le nommer
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
                    //ajoute au tableau team ton character
                    team.append(character)
                case "2":
                    print("You have selected a Magus" + "\n")
                    let name = nameCharacter()
                    character = Magus(name: name)
                    //ajoute au tableau team ton character
                    team.append(character)
                case "3":
                    print("You have selected a Giant" + "\n")
                    let name = nameCharacter()
                    character = Giant(name: name)
                    //ajoute au tableau team ton character
                    team.append(character)
                case "4":
                    print("You have selected a Dwarf" + "\n")
                    let name = nameCharacter()
                    character = Dwarf(name: name)
                    //ajoute au tableau team ton character
                    team.append(character)
                default:
                    print("I don't understand, please try again.")
                } // end switch
            } //end if
        } // end while count
    } // end createTeamCharacters()
    
    // 1. Player: Choose his name (->string) : choisi un nom pour le personnage que tu viens de selectionner et renvoie uniquement un string
    func nameCharacter() -> String {
     
        
        //jusqu'à ce que la condition soit bonne fait ceci et retourne chooseName
   
            print("NAME IT :")
            // demande au joueur de donner un nom à son personnage qu'il vient de créer
            let name = readLine()!
                  let unNom = checkName(names: name)
            
                //si le nom contient bien un string alors affiche le dans un print et le booleen est true, choosename sera égal de nature String
                
                if unNom == false {
                    return nameCharacter()

                }
                
        // stop la boucle
         return name

    } // end nameCharacter()
    
    // fonction
    func checkName(names: String) -> Bool {
        if names.count < 2 {
            print("veuillez rentrer au moins deux caractères :")
            return false
        }
        
        for userNameArray in Player.uniqueName {
                if userNameArray.lowercased() == names.lowercased() {
                    print("Veuillez choisir un autre nom :")
                    return false
                }
                
        }
        Player.uniqueName.append(names)
        return true
    }
    
    
    // 1. Presentation Team
    func displayTeam() {
        var enterNumber = 1
        for character in team {
            print("\(enterNumber) - \(character.presentation())")
            enterNumber += 1
        }
    } // end displayTeam()
    
    
    // 2. Select a character in order to fight the adverse team
    func selectCharacter() -> Character {
        // creation d'un container pour stocker le personnage
        var characterToFight = Character(typeclass: "", name: "", weapon: Axe(), maxlife: 0, protectheal: false)
        
        //montrer les équipes pour faire un choix
         displayTeam()
        //le joueur rentre une valeur
        let userChoice = Player.answerInt()
        //recup valeur dans le switch on l'assigne pour l'équipe adverse
        switch userChoice {
        case 1:
            // j'assigne le character de l'équipe dans le container
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
        // je renvoie le container(contenant le joueur selectionné)
        return characterToFight
        
    }
    
} // end Player



