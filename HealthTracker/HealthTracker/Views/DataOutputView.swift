//
//  DataOutput.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct DataOutputView: View {
    
    var calcs = Algorithm(age: Int(Data.shared.healthProfileData[0])!, gender: Data.shared.healthProfileData[1], weight: Int(Data.shared.healthProfileData[2])!, height: Int(Data.shared.healthProfileData[3])!, hours: Int(Data.shared.dataEntryData[0])!, water: Int(Data.shared.dataEntryData[1])!, calEaten: Int(Data.shared.dataEntryData[2])!, calBurn: Int(Data.shared.dataEntryData[3])!)
    
    var body: some View {
        VStack {
            Text("Today's Results")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            
            Group {
                List {
                    Text(calcs.calculateBMI())
                    Text(calcs.waterAmount())
                    Text(calcs.sleepQuality())
                    Text(calcs.calsEaten())
                    Text(calcs.calBurned())
                }
            }
    
            Spacer()
        }
        .navigationBarBackButtonHidden(true)
    }
}
    

struct DataOutputView_Previews: PreviewProvider {
    static var previews: some View {
        DataOutputView()
    }
}
