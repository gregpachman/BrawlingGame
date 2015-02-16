//
//  Player.swift
//  Brawling
//
//  Created by Jo Albright on 2/11/15.
//  Copyright (c) 2015 Jo Albright. All rights reserved.
//

import UIKit


class Player: NSObject {
    
    var healthPoints = 100
    var displayName = ""
    var skin: UIImage?
    var death = 0
    var killCount = 0
    
    
    func attackWithDamage(damage: Int) -> Int {
        // damage reduction based on armor powerup
        
        healthPoints -= damage
        
        var newHealth = healthPoints
        
        
        println(displayName + " has \(healthPoints) left")
        
        
        
        if newHealth <= 0 {
            
            ++death
        }
        
        return newHealth
    }
   
}
