//
//  DataEntryView.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct DataEntryView: View {
    
    @State var str1: String = ""
    @State var str2: String = ""
    @State var str3: String = ""
    @State var str4: String = ""
    
    @State var arrayData2: [String] = []
    
    @State var addData2: Bool = false
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
    var body: some View {
        
        ZStack {
            themeBackground
            
            VStack {
                Text("Enter Today's Behavior")
                    .padding(.top, 50)
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                
                Group {
                    CustomTextFieldView(textFieldLabel: "Hours Slept", tempText: $str1).keyboardType(.decimalPad)
                    Spacer()
                    CustomTextFieldView(textFieldLabel: "Cups of Water", tempText: $str2)
                        .keyboardType(.decimalPad)
                    Spacer()
                    CustomTextFieldView(textFieldLabel: "Calories Ate", tempText: $str3)
                        .keyboardType(.decimalPad)
                    Spacer()
                    CustomTextFieldView(textFieldLabel: "Calories Burned", tempText: $str4)
                        .keyboardType(.decimalPad)
                    Spacer()
                }
                
                Group {
                    
                    Button(action: {
                        arrayData2.append(str1)
                        arrayData2.append(str2)
                        arrayData2.append(str3)
                        arrayData2.append(str4)
                        print(arrayData2)
                        Data.shared.dataEntryData = arrayData2
                        addData2 = true
                    }, label: {NextButtonView()})
                    
                    NavigationLink("", isActive: $addData2, destination: {MoodView()})
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct DataEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DataEntryView()
    }
}

