//
//  NextButtonView.swift
//  HealthTracker
//
//  Created by Marco Monfiglio on 4/21/22.
//

import SwiftUI

struct NextButtonView: View {
    
    var width: CGFloat = 250
    var height: CGFloat = 60
    var text: String = "Next"
    
    
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    var body: some View {
        
        ZStack {
            Capsule()
                .foregroundColor(themePurple)
        
                .frame(width: width, height: height)
           Text(text)
                .font(Font.system(size: 25, weight: .medium, design: .monospaced))
                .foregroundColor(.white)
            .frame(width: width/2, height: height/2)
        }
    }
}

struct NextButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NextButtonView()
    }
}

