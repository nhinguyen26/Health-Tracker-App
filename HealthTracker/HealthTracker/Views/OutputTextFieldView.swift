//
//  OutputTextFieldView.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct OutputTextFieldView: View {
    
    var textFieldLabel: String

    @Binding var tempText: String
    
    let units: [String:String] = ["Hours Slept" : "hours", "Cups of Water":"cups", "Calories Burned":"calories", "Calories Eaten":"calories", "Age" : "years", "Weight": "pounds", "Height": "inches", "Gender": "input"]

    var body: some View {
        
        VStack {
            HStack {
                Text(textFieldLabel)
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
                
                Text(tempText)
                    .padding(10)
                    .font(Font.system(size: 15, weight: .medium, design: .monospaced))
                    .frame(width: 260, height: 50)
                
            }
        }
    }
}

struct OutputTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextFieldView(textFieldLabel: "Hours Slept")
    }
}

