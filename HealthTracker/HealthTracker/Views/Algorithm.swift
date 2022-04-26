import Foundation
import UIKit

struct Algorithm {
    
    var age: Int
    var gender: String
    var hours: Int
    var water: Int
    var weight: Int
    var height: Int
    var calBurn: Int
    var calEaten: Int
    
    init (age: Int, gender: String, weight: Int, height: Int, hours: Int, water: Int, calEaten: Int, calBurn: Int) {
        self.age = age
        self.gender = gender
        self.hours = hours
        self.water = water
        self.weight = weight
        self.height = height
        self.calBurn = calBurn
        self.calEaten = calEaten
    }
    
    
    func calculateBMI() -> String {
        return "Your BMI is \((weight * 703) / (height*height))"
    }
    
    func sleepQuality() -> String {
        if hours > 8 {
            return "You got more than 8 hours. You slept well!"
        } else {
            return "You slept less than 8 hours. You need more sleep!"
        }
    }
    
    func waterAmount() -> String {
        if water > 13 {
            return "You drank more than 13 cups of water. Great job!"
        } else {
            return "You drank less than 13 cups of water. You need to drink more water!"
        }
    }
    
    func calBurned() -> String {
        if water > 13 {
            return "You drank more than 13 cups of water. Great job!"
        } else {
            return "You drank less than 13 cups of water. You need to drink more water!"
        }
    }
    
    func calsEaten() -> String {
        if calEaten > 2600 {
            return "You consumed more calories than the recommended amount."
        } else if calEaten < 1600 {
            return "You consumed less calories than the recommended amount"
        } else {
            return "You ate the right amount of calories today. Great job!"
        }
    }
    
    
    
    
}
