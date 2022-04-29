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
        return "Your BMI is \((weight * 703) / (height*height))."
    }
    
    func sleepQuality() -> String {
        if hours >= 8 {
            return "You got at least 8 hours. You slept well!"
        } else {
            return "You slept less than 8 hours. You need more sleep!"
        }
    }
    
    func waterAmount() -> String {
        if water >= 13 {
            return "You drank at least 13 cups of water. Great job!"
        } else {
            return "You drank less than 13 cups of water. Drink more water!"
        }
    }
    
    func calBurned() -> String {
        if calBurn >= 2200 {
            return "You burned at least 2200 calories. Great job!"
        } else {
            return "You burned less than 2200 calories. Go for a walk!"
        }
    }
    
    func calsEaten() -> String {
        if calEaten >= 2600 {
            return "You consumed more calories than the recommended amount."
        } else if calEaten <= 1600 {
            return "You consumed less calories than the recommended amount."
        } else {
            return "You ate the right amount of calories today. Great job!"
        }
    }
}
