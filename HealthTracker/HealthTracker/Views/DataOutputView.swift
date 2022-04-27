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
                    .padding(.top, 50)
                    .font(.largeTitle)
                    .padding(.bottom, 40)
                Group {
                    VStack {
                        HStack {
                            Text("BMI")
                                .foregroundColor(.black)
                                .background(Rectangle().fill(.white))
                                .font(Font.system(size: 20, weight: .medium, design: .monospaced))
                                .padding(.leading, 60)
                            Spacer()
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.white)
                                .frame(width: 300, height: 50)
                                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                            Text(calcs.calculateBMI())
                                .padding(10)
                                .font(Font.system(size: 15, weight: .medium, design: .monospaced))
                                .frame(width: 280, height: 50)
                                .multilineTextAlignment(.leading)
                        }
                    }
                    Spacer()
                    
                    OutputTextFieldView(category: "Cups of water:", text:calcs.waterAmount())
                    Spacer()
                    
                    OutputTextFieldView(category: "Hours slept:", text:calcs.sleepQuality())
                    Spacer()
                    
                    OutputTextFieldView(category: "Calories ate:", text:calcs.calsEaten())
                    Spacer()
                    
                    OutputTextFieldView(category: "Calories burned:", text:calcs.calBurned())
                    Spacer()
                }
            }
        }
    }
}


struct DataOutputView_Previews: PreviewProvider {
    static var previews: some View {
        DataOutputView()
    }
}
