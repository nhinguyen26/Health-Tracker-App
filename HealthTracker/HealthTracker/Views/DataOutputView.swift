//
//  DataOutput.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct DataOutputView: View {
    
    var body: some View {
        VStack {
            Text("Today's Results")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            
            
            CustomTextFieldView(textFieldLabel: "Hours Slept")
            Spacer()
            
            NextButtonView()
                .padding(.bottom, 50)
        }
    }
}

struct DataOutputView_Previews: PreviewProvider {
    static var previews: some View {
        DataOutputView()
    }
}

