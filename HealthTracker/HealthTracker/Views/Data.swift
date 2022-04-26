import Foundation
struct Data {

    var healthProfileData: [String]
    var dataEntryData: [String]
    var moodData: [String]
    var foodData: [String]
    
    static var shared = Data(health: ["1", "", "1", "1"], entry: ["1", "1", "1", "1"], mood: [], food: [])
    
    init(health: [String], entry: [String], mood: [String], food: [String]) {
        self.healthProfileData = health
        self.dataEntryData = entry
        self.moodData = mood
        self.foodData = food
    }
    
}
