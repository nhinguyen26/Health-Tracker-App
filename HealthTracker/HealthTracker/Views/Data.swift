import Foundation
struct Data {

    var healthProfileData: [String]
    var dataEntryData: [String]
    var moodData: [String]
    var foodData: [String]
    
    static let shared = Data(health: [], entry: [], mood: [], food: [])
    
    init(health: [String], entry: [String], mood: [String], food: [String]) {
        self.healthProfileData = health
        self.dataEntryData = entry
        self.moodData = mood
        self.foodData = food
    }
    
}
