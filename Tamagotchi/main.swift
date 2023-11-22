//
//  main.swift
//  Tamagotchi
//
//  Created by Freddie H on 22/11/2023.
//

import Foundation

class Tamagotchi {
    
    //Properties
    private var hungerLevel: Int
    private var happinessLevel: Int
    private var energyLevel: Int
    private var healthLevel: Int
    private var ageLevel: Int
    private var weightLevel: Int
    private var trainingLevel: Int
    
    //init method
    
    init(hungerLevel: Int, happinessLevel: Int, energyLevel: Int, healthLevel: Int, ageLevel: Int, weightLevel: Int, trainingLevel: Int) {
        self.hungerLevel = hungerLevel
        self.happinessLevel = happinessLevel
        self.energyLevel = energyLevel
        self.healthLevel = healthLevel
        self.ageLevel = ageLevel
        self.weightLevel = weightLevel
        self.trainingLevel = trainingLevel
    }
    
    func eat() {
        print("your tamagotchi ate an apple!")
        print("")
        
        if self.hungerLevel == 10 {
            
            print("your tamagotchi is full")
            print("")
            
        }
        
        else {
            
            self.hungerLevel += 1
            self.weightLevel += 1
            
        }
    }
    
    func playWithTamagotchi() {
        
        print("your tamagotchi did a dance!")
        print("")
        
        if self.happinessLevel == 10 {
            
            print("your tamagotchi is very happy already")
            print("")
            
        }
        
        else {
            
            self.happinessLevel += 1
            
        }
    }
    
    func sleep() {
        
        print("your tamagotchi slept")
        print("")
        
        if self.energyLevel == 10 && self.healthLevel == 10{
            
            print("your tamagotchi is already well rested and healthy so couldn't sleep")
            print("")
            
        }
        
        else if self.energyLevel == 10 && self.healthLevel != 10 {
            
            print("your tamagotchi couldn't sleep but healed up")
            print("")
            self.healthLevel += 1
        }
        
        else if self.energyLevel != 10 && self.healthLevel == 10 {
            
            print("your tamagotchi slept but didn't heal as it was already healthy")
            print("")
            
        }
        else {
            
            print("your tamagotchi slept and healed itself")
            
            self.energyLevel += 1
            self.healthLevel += 1
            
        }
        
    }
    
    func trainTamagotchi() {
        
        print("you trained your tamagotchi!")
        print("")
        
        if self.trainingLevel == 10 {
            
            print("your tamagotchi is very well-trained already")
            
        }
        
        else {
            
            self.trainingLevel += 1
            
        }
    }
    
    
    //MENU FUNCTION
    
    func showMenuAndActOffInput(){
        
        let menu = """
1: feed tamagotchi
2: play with tamagotchi
3: put tamagotchi to sleep
4: train tamagotchi

please enter the corresponding number to your action here:
"""
        print(menu)
        
        if let userInput = readLine(){
            if let intUserInput = Int(userInput) {
                if intUserInput < 0 || intUserInput > 4 {
                    print("Invalid input, please stick to the range shown")
                }
                
            }
            
            if userInput == "1" {
                self.eat()
            }
            
            if userInput == "2" {
                self.playWithTamagotchi()
            }
            
            if userInput == "3" {
                self.sleep()
            }
            
            if userInput == "4" {
                self.trainTamagotchi()
            }
            
        }
        
        print("hunger is \(self.hungerLevel)")
        print("happiness is \(self.happinessLevel)")
        print("energy is \(self.energyLevel)")
        print("health is \(self.healthLevel)")
        print("age is \(self.ageLevel)")
        print("weight is \(self.weightLevel)")
        print("training level is \(self.trainingLevel)")
        
        
        
        var randomNumber = Int.random(in: 1...4)
        
        if randomNumber == 1 {
            print("tamagotchi got hungrier")
            
            if self.hungerLevel == 0 {
                print("tamagotchi dead")
            }
            
            else{
                self.hungerLevel -= 1
            }
        }
        
        if randomNumber == 2 {
            print("tamagotchi got more bored")
            print("")
            
            if self.happinessLevel == 0 {
                print("tamagotchi died of boredom")
                print("")
            }
            
            else{
                self.happinessLevel -= 1
            }
        }
        
        if randomNumber == 3 {
            print("tamagotchi got more tired")
            print("")
            
            if self.energyLevel == 0 {
                print("tamagotchi dead from exhaustion")
                print("")
            }
            
            else{
                self.energyLevel -= 1
            }
        }
        
        if randomNumber == 4 {
            print("tamagotchi lost discipline")
            print("")
            
            if self.trainingLevel == 0 {
                print("tamagotchi went feral")
                print("")
            }
            
            else{
                self.trainingLevel -= 1
            }
        }
        
        self.ageLevel += 1
        
        print("do you wish to continue with caring for the tamagotchi (1 = yes, 0 = no): ")
        print("")
        
        if let userCarryOnInput = readLine() {
            if userCarryOnInput == "0" {
                print("you abandoned the tamagotchi")
                print("")
            }
            if userCarryOnInput == "1" {
                self.showMenuAndActOffInput()
            }
            
            else{
                print("invalid input")
                print("")
            }
        }
        
    }
    

    
}

var tamagotchi1 = Tamagotchi(hungerLevel: 9, happinessLevel: 8, energyLevel: 7, healthLevel: 9, ageLevel: 0, weightLevel: 4, trainingLevel: 0)

print(tamagotchi1.showMenuAndActOffInput())





//checking changes for trial commit
