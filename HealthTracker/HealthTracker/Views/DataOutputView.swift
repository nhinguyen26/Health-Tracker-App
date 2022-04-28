//
//  DataOutputView.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct DataOutputView: View {
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
    var calcs = Algorithm(age: Int(Data.shared.healthProfileData[0])!, gender: Data.shared.healthProfileData[1], weight: Int(Data.shared.healthProfileData[2])!, height: Int(Data.shared.healthProfileData[3])!, hours: Int(Data.shared.dataEntryData[0])!, water: Int(Data.shared.dataEntryData[1])!, calEaten: Int(Data.shared.dataEntryData[2])!, calBurn: Int(Data.shared.dataEntryData[3])!)
    
    
    var body: some View {
        ZStack {
            themeBackground
            VStack {
                Text("Todays Results")
                    .padding(.top, 100)
                    .font(.largeTitle)
                    .padding(.bottom, 10)

                    
                    Group {
                    
                        OutputTextFieldView(category: "BMI:", text:String(calcs.calculateBMI()))
                            .padding(10)
                            .padding(.top, -10)
                        
                        OutputTextFieldView(category: "Cups of water:", text:calcs.waterAmount())
                            .padding(10)
                            
                       
                        
                        OutputTextFieldView(category: "Hours slept:", text:calcs.sleepQuality())
                            .padding(10)
                        
                        
                        OutputTextFieldView(category: "Calories ate:", text:calcs.calsEaten())
                            .padding(10)
                        
                        
                        OutputTextFieldView(category: "Calories burned:", text:calcs.calBurned())
                            .padding(10)
                        
                        OutputTextFieldView(category: "Mood:", text: Data.shared.moodData[0])
                            .padding(10)
                            .padding(.bottom, 20)
                    }
                    Spacer()
                    
                    TabPanelView(home: true)
                    .padding(.bottom, 100)
                }
                Spacer()
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}


struct DataOutputView_Previews: PreviewProvider {
    static var previews: some View {
        DataOutputView()
    }
}
