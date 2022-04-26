//
//  WelcomeView.swift
//  HealthTracker
//
//  Created by Nhi Nguyen on 4/25/22.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        VStack() {
            
            Image("bear-logo")
            
            Spacer()
            
            Text("CubHealth")
                .padding(.top, 100)
                .font(.largeTitle)
                .padding(.bottom, 100)
            
            Spacer()
            
            Text("Happy Healthy")

            HStack() {
            }
            
            Spacer()
            
        
            //Button("Get Started") {
                //NextButtonView()
            //}
        
            Button(action: {print("Get Started")} ,
               label: {
                NextButtonView()
                .padding(.bottom, 50)
            })
        }
        
    }

