//
//  HealthProfileView.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct HealthProfileView: View {
    
    @State var str1: String = ""
    @State var str2: String = ""
    @State var str3: String = ""
    @State var str4: String = ""
    
    @State var dictionary: [String] = []
    
    init() {
        dictionary.append(str1)
        dictionary.append(str2)
        dictionary.append(str3)
        dictionary.append(str4)
    }
    
    var body: some View {
        
        VStack {
            Text("Tell us about yourself")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            CustomTextFieldView(textFieldLabel: "Age", tempText: str1)
                .keyboardType(.decimalPad)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Gender", tempText: str2)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Weight", tempText: str3)
                .keyboardType(.decimalPad)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Height", tempText: str4)
                .keyboardType(.decimalPad)
            Spacer()
            
            Button(action: {print(dictionary)} ,
                   label: {
                NextButtonView()
                    .padding(.bottom, 50)
            })
        }
    }
}

struct HealthProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HealthProfileView()
    }
}
