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
        
        if self.hungerLevel == 10 {
            
            print("your tamagotchi is full")
            
        }
        
        else {
            
            self.hungerLevel += 1
            self.weightLevel += 1
            
        }
    }
    
    func playWithTamagotchi() {
        
        print("your tamagotchi did a dance!")
        
        if self.happinessLevel == 10 {
            
            print("your tamagotchi is very happy already")
            
        }
        
        else {
            
            self.happinessLevel += 1
            
        }
    }
    
    func sleep() {
        
        print("your tamagotchi slept")
        
        if self.energyLevel == 10 && self.healthLevel == 10{
            
            print("your tamagotchi is already well rested and healthy so couldn't sleep")
            
        }
        
        else if self.energyLevel == 10 && self.healthLevel != 10 {
            
            print("your tamagotchi couldn't sleep but healed up")
            self.healthLevel += 1
        }
        
        else if self.energyLevel != 10 && self.healthLevel == 10 {
            
            print("your tamagotchi slept but didn't heal as it was already healthy")
            
        }
        else {
            
            print("your tamagotchi slept and healed itself")
            
            self.energyLevel += 1
            self.healthLevel += 1
            
        }
        
    }
    
    func trainTamagotchi() {
        
        print("you trained your tamagotchi!")
        
        if self.trainingLevel == 10 {
            
            print("your tamagotchi is very well-trained already")
            
        }
        
        else {
            
            self.trainingLevel += 1
            
        }
    }
    
    
    //MENU FUNCTION
    
    func showMenu() {
        
        let menu = """
1: feed tamagotchi
2: play with tamagotchi
3: put tamagotchi to sleep
4: train tamagotchi
"""
        print(menu)
        
    }
    
// make func to get user input
    
}

var tamagotchi1 = Tamagotchi(hungerLevel: 9, happinessLevel: 8, energyLevel: 7, healthLevel: 9, ageLevel: 0, weightLevel: 4, trainingLevel: 0)





//checking changes for trial commit
