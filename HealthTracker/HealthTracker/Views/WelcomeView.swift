//  WelcomeView.swift
//  HealthTracker
//
//  Created by Nhi Nguyen on 4/25/22.
//

import Foundation
import SwiftUI

struct WelcomeView: View {
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
    var body: some View {
        ZStack {
            themeBackground
            
            NavigationView {
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
                    
                    NavigationLink(destination: {HomeView()}, label: {NextButtonView()})
                        .padding(.bottom, 50)
                }
                .navigationBarHidden(true)
            }
        }
    }
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
