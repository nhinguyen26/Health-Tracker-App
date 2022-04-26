//
//  ResourceView.swift
//  HealthTracker
//
//  Created by Matthew Phua on 4/25/22.
//

import SwiftUI
import Foundation

struct ResourceView: View {
    let background : Color = Color(red: 247/255, green: 250/255, blue: 254/255)
    let white: Color = Color(red: 255/255, green: 255/255, blue: 255/255)
    let black: Color = Color(red: 0/255, green: 0/255, blue: 0/255)

    var body: some View {
            VStack{
                ZStack{
                    Rectangle()
                        .fill(background)
                        .cornerRadius(20)
                        .shadow(color: Color.black.opacity(0.2), radius: 5, y: 10.0)
                    VStack {
                        Text("Resources")
                            .font(Font.system(size: 30, weight: .heavy))
                            .padding([.bottom,.top], 10)
                        
                        Text("Counseling")
                            .font(.title3)
                            .padding(.bottom, 10)
                        Text("[- UHS Mental Health Counseling](https://uhs.berkeley.edu/mental-health/resources/campus-resources)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                        Text("[- CAPS Group Mental Health Counseling](https://uhs.berkeley.edu/counseling/group)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                        Text("[- CAPS Individual Mental Health Counseling](https://uhs.berkeley.edu/counseling/individual)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                        Text("Wellness Groups")
                            .font(.title3)
                            .padding(.bottom, 10)
                        Text("[- Berkeley Walks](https://uhs.berkeley.edu/facstaff/wellness/active-work/berkeley-walks)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                        Text("[- Smoking Cessation](https://uhs.berkeley.edu/tobaccohelp)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                        Text("Nutrition Programs")
                            .font(.title3)
                            .padding(.bottom, 10)
                        Text("[- UHS Nutrition Programs](https://uhs.berkeley.edu/counseling/social-services/counseling/nutrition)")
                            .font(Font.system(size: 15, weight: .medium))
                            .padding(.bottom, 10)
                    }
                }.frame(width: 350, height: 675)
                    .padding(20)
                    .padding(.bottom, 10)
                    .padding(.top, 80)
                TabPanelView(home: false).padding(.bottom, 110)
            }

        
        
    }
}

struct ResourceView_Previews: PreviewProvider {
    static var previews: some View {
        ResourceView()
    }
}
