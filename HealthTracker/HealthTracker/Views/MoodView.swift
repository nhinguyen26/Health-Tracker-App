//
//  MoodView.swift
//  HealthTracker
//
//  Created by Matthew Phua on 4/25/22.
//

import Foundation
import SwiftUI
struct MoodView: View {
    @State var mood: String = "I'm Happy"
    @State var addData3: Bool = false
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    let selectedPurple: Color = Color(CGColor(red: 237/255, green: 181/255, blue: 247/255, alpha: 1))
    
    @State var mood1: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    @State var mood2: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    @State var mood3: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    @State var mood4: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))

    
    var body: some View {
        
        ZStack {
            themeBackground
            
            VStack {
                Text("How are you feeling today?")
                    .padding(.top, 50)
                    .font(.title)
                    .padding(.bottom, 50)
                Button(action: {
                    mood="I'm Happy!"
                    mood1 = selectedPurple
                    mood2 = themePurple
                    mood3 = themePurple
                    mood4 = themePurple
                }) {
                    VStack {
                        Text("happy")
                            .font(.subheadline)
                        Image("happy")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(mood1, lineWidth: 10))
                    }
                }
                Spacer()
                Button(action: {
                    mood="I'm Fine."
                    mood1 = themePurple
                    mood2 = selectedPurple
                    mood3 = themePurple
                    mood4 = themePurple
                }) {
                    VStack {
                        Text("fine")
                            .font(.subheadline)
                        Image("fine")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(mood2, lineWidth: 10))
                    }
                }
                Spacer()
                Button(action: {
                    mood="I'm Sad."
                    mood1 = themePurple
                    mood2 = themePurple
                    mood3 = selectedPurple
                    mood4 = themePurple
                }) {
                    VStack {
                        Text("sad")
                            .font(.subheadline)
                        Image("sad")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(mood3, lineWidth: 10))
                    }
                }
                Spacer()
                Button(action: {
                    mood="Angry!"
                    mood1 = themePurple
                    mood2 = themePurple
                    mood3 = themePurple
                    mood4 = selectedPurple
                }) {
                    VStack {
                        Text("angry")
                            .font(.subheadline)
                        Image("angry")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(mood4, lineWidth: 10))
                    }
                }
                Spacer()
                
                Group {
                    
                    Button(action: {
                        Data.shared.moodData = [mood]
                        addData3 = true
                    }, label: {NextButtonView()})
                    
                    NavigationLink("", isActive: $addData3, destination: {NutritionView()})
                }
                
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}
struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
    }
}

