//
//  Enter Today's Behavior.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct HealthProfileView: View {
    var body: some View {
        VStack {
            Text("Tell us about yourself")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            CustomTextFieldView(textFieldLabel: "Hello")
            Spacer()
            CustomTextFieldView(textFieldLabel: "Hello")
            Spacer()
            CustomTextFieldView(textFieldLabel: "Hello")
            Spacer()
            CustomTextFieldView(textFieldLabel: "Hello")
            Spacer()
            NextButtonView()
                .padding(.bottom, 50)
        }
    }
}

struct HealthProfileView_Previews: PreviewProvider {
    static var previews: some View {
        HealthProfileView()
    }
}

struct Enter_Today_s_Behavior_Previews: PreviewProvider {
    static var previews: some View {
        Enter_Today_s_Behavior()
    }
}
