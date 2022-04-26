//
//  TabPanelView.swift
//  HealthTracker
//
//  Created by Matthew Phua on 4/25/22.
//

import SwiftUI

struct TabPanelView: View {
        
    var width: CGFloat = 150
    var height: CGFloat = 60
    var home: Bool
    var opacityVal: Double = 0.7
    
    init(home: Bool) {
        self.home = home
        if self.home {
            opacityVal = 0.7
        } else {
            opacityVal = 0.3
        }
    }
    
    
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    let themeBackground: Color = Color(CGColor(red: 229/255, green: 229/255, blue: 229/255, alpha: 1))
    
    var body: some View {
        
        ZStack {
            Capsule()
                .foregroundColor(.white)
                .frame(width: width, height: height)
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 0)
            
            HStack {
                
                NavigationLink(destination: HomeView(), label: {Image(systemName: "house.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 40)
                        .foregroundColor(.black.opacity(opacityVal))})

                
                NavigationLink(destination: HealthProfileView(), label: {Circle().fill(themePurple)
                        .frame(width:40, height: 40)
                        .overlay(Image(systemName: "plus")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30))})
                
                NavigationLink(destination: ResourceView(), label: {Image(systemName: "questionmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black.opacity(1-opacityVal))})
                
            }
            
            
        }
        .ignoresSafeArea()
    }
}

struct TabPanelView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TabPanelView(home: true)
        }
    }
}
