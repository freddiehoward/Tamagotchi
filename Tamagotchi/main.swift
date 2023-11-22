//
//  main.swift
//  Tamagotchi
//
//  Created by Freddie H on 22/11/2023.
//

import Foundation

class Tamagotchi {
    
    //Properties
    var hungerLevel: Int
    var happinessLevel: Int
    var energyLevel: Int
    var healthLevel: Int
    var ageLevel: Int
    var weightLevel: Int
    var disciplineLevel: Int
    var generationLevel: Int
    var trainingLevel: Int
    var pointsLevel: Int
    
    //init method
    
    init(hungerLevel: Int, happinessLevel: Int, energyLevel: Int, healthLevel: Int, ageLevel: Int, weightLevel: Int, disciplineLevel: Int, generationLevel: Int, trainingLevel: Int, pointsLevel: Int) {
        self.hungerLevel = hungerLevel
        self.happinessLevel = happinessLevel
        self.energyLevel = energyLevel
        self.healthLevel = healthLevel
        self.ageLevel = ageLevel
        self.weightLevel = weightLevel
        self.disciplineLevel = disciplineLevel
        self.generationLevel = generationLevel
        self.trainingLevel = trainingLevel
        self.pointsLevel = pointsLevel
    }
    
    //other methods
    
}

var tamagotchi1 = Tamagotchi(hungerLevel: 9, happinessLevel: 8, energyLevel: 7, healthLevel: 9, ageLevel: 0, weightLevel: 4, disciplineLevel: 2, generationLevel: 1, trainingLevel: 0, pointsLevel: 0)

