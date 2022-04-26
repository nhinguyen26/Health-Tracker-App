//
//  HomeView.swift
//  HealthTracker
//
//  Created by Nhi Nguyen on 4/25/22.
//

import Foundation
import SwiftUI

struct HomeView: View {
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
   
    var body: some View {
        ZStack {
            themeBackground
        
            VStack {
                Spacer()
            
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.white)
                        .frame(width: 300, height: 250)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 0)
                        
                        
                
                    Text("Please enter today's info to receive specialized recommendations")
                        .frame(width: 150, height: 150)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        
                }
                Spacer()
                TabPanelView(home: true)
                    .padding(.bottom, 50)
            }
        }
        .ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        

    }
}

struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
}
