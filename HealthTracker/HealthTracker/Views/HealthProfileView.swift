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
    
    @State var arrayData: [String] = []
    @State var addData: Bool = false
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
    var body: some View {
        
        ZStack {
            themeBackground
            
            VStack {
                Text("Tell us about yourself")
                    .padding(.top, 50)
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                CustomTextFieldView(textFieldLabel: "Age", tempText: $str1)
                    .keyboardType(.decimalPad)
                Spacer()
                CustomTextFieldView(textFieldLabel: "Gender", tempText: $str2)
                Spacer()
                CustomTextFieldView(textFieldLabel: "Weight", tempText: $str3)
                    .keyboardType(.decimalPad)
                Spacer()
                CustomTextFieldView(textFieldLabel: "Height", tempText: $str4)
                    .keyboardType(.decimalPad)
                Spacer()
                
                Group {
                    
                    Button(action: {
                        arrayData.append(str1)
                        arrayData.append(str2)
                        arrayData.append(str3)
                        arrayData.append(str4)
                        print(arrayData)
                        Data.shared.healthProfileData = arrayData
                        addData = true
                    }, label: {NextButtonView()})
                    
                    NavigationLink("", isActive: $addData, destination: {DataEntryView()})
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct HealthProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HealthProfileView()
    }
}

