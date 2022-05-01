//
//  CustomTextFieldView.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct CustomTextFieldView: View {
    
    var textFieldLabel: String

    @Binding var tempText: String
    
    let units: [String:String] = ["Hours Slept" : "hours", "Cups of Water":"cups", "Calories Burned":"calories", "Calories Ate":"calories", "Age" : "years", "Weight": "pounds", "Height": "inches", "Gender": "input"]
    

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
                
                TextField(units[textFieldLabel] ?? "", text: $tempText)
                    .padding(10)
                    .font(Font.system(size: 15, weight: .medium, design: .monospaced))
                    .frame(width: 260, height: 50)
                
            }
        }
    }
}

//struct CustomTextFieldView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        CustomTextFieldView(textFieldLabel: "Hours Slept")
//    }
//}
