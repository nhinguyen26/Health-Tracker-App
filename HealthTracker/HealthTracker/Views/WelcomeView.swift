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
            Spacer()
            Spacer()
            
            Image("bear")
                .frame(width: 50,height: 50).foregroundColor(.purple)
        
            Text("CubHealth")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            
            Text("Happy Healthy")
                .padding(.bottom,50)

            HStack() {
            }

            Spacer()
            
            Button(action: {print("Get Started")} ,
               label: {
                NextButtonView()
                .padding(.bottom, 50)
            })
               
        }
            
            //Spacer()

            
        }
        
    }

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
