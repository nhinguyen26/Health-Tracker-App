//
//  DataEntryView.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct DataEntryView: View {
    var body: some View {
        VStack {
            Text("Enter Today's Behavior")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            
            
            CustomTextFieldView(textFieldLabel: "Hours Slept").keyboardType(.decimalPad)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Cups of Water")
                .keyboardType(.decimalPad)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Calories Ate")
                .keyboardType(.decimalPad)
            Spacer()
            CustomTextFieldView(textFieldLabel: "Calories Burned")
                .keyboardType(.decimalPad)
            Spacer()
            NextButtonView()
                .padding(.bottom, 50)
        }
    }
}

struct DataEntryView_Previews: PreviewProvider {
    static var previews: some View {
        DataEntryView()
    }
}
