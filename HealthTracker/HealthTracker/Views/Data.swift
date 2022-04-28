import Foundation
struct Data {

    var healthProfileData: [String]
    var dataEntryData: [String]
    var moodData: [String]
    var foodData: [String]
    var outputReady = false
    
    static var shared = Data(health: ["1", "", "1", "1"], entry: ["1", "1", "1", "1"], mood: ["I'm Happy!"], food: [], outputReady: false)
    
    init(health: [String], entry: [String], mood: [String], food: [String], outputReady: Bool) {
        self.healthProfileData = health
        self.dataEntryData = entry
        self.moodData = mood
        self.foodData = food
        self.outputReady = outputReady
    }
    
}
