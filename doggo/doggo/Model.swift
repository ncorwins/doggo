//
//  Model.swift
//  doggo
//
//  Created by school on 9/30/22.
//

import Foundation


func drawing() {
    print("test")
}





class beeModel : ObservableObject {
    
    @Published var bees = [bee]()
    
    init()
    {
        self.bees = beeData
        
    }
    
    var beeData = [
        bee(speed: 10, strenght: 10, damage: 10, image: "test")
    ]
    
    
    func getCount() -> Int
    {
        return bees.count
    }
    
    func removeBees() {
        bees.removeAll()
    }
    
    func addBeeObject(beeSpeed:Int, beeStrength: Int, beeDamage: Int, beeImg: String) {
        let f = bee(speed: beeSpeed, strenght: beeStrength, damage: beeDamage, image: beeImg)
        bees.append(f)
    }
}

class dogModel : ObservableObject {
    
    @Published var dogs = [dog]()
    
    init()
    {
        self.dogs = dogData
        
    }
    
    var dogData = [
        dog(health: 10, image: "test")
    ]
    
    
    func getCount() -> Int
    {
        return dogs.count
    }
    
    func removeDogs() {
        dogs.removeAll()
    }
    
    func addDogObject(dogHealth:Int, dogImg: String) {
        let f = dog(health: dogHealth, image: dogImg)
        dogs.append(f)
    }
}

class gameModel : ObservableObject {
    func startGame() {
        print("test")
    }
}
