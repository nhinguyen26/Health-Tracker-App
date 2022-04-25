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
            HStack() {
                Text("CubHealth")
                Text("Happy Healthy")
                //Image() still need to get the image
            }
            
            Spacer()
            
            HStack() {
                Button("Get Started")
            }
        }
        
    }
}
