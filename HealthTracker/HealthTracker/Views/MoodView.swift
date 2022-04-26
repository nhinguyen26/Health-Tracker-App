//
//  MoodView.swift
//  HealthTracker
//
//  Created by Matthew Phua on 4/25/22.
//

import Foundation
import SwiftUI
struct MoodView: View {
    @State var mood: String = ""
    @State var addData3: Bool = false
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))

    var body: some View {
        VStack {
            Text("How are you feeling today?")
                .padding(.top, 50)
                .font(.title)
                .padding(.bottom, 50)
            Button(action: {
                            mood="happy"
                          }) {
                              HStack {
                                  Text("happy").padding(.trailing, 15).font(.subheadline)
                                  Image("happy")
                                              .clipShape(Circle())
                                              .overlay(Circle().stroke(themePurple, lineWidth: 10))
                              }
                          }
            Spacer()
            Button(action: {
                            mood="fine"
                          }) {
                              HStack {
                                  Text("fine").padding(.trailing, 15).font(.subheadline)
                                  Image("fine")
                                              .clipShape(Circle())
                                              .overlay(Circle().stroke(themePurple, lineWidth: 10))
                              }
                          }
            Spacer()
            Button(action: {
                            mood="sad"
                          }) {
                              HStack {
                                  Text("sad").padding(.trailing, 15).font(.subheadline)
                                  Image("sad")
                                              .clipShape(Circle())
                                              .overlay(Circle().stroke(themePurple, lineWidth: 10))
                              }
                          }
            Spacer()
            Button(action: {
                            mood="angry"
                          }) {
                              HStack {
                                  Text("angry").padding(.trailing, 15).font(.subheadline)
                                  Image("angry")
                                              .clipShape(Circle())
                                              .overlay(Circle().stroke(themePurple, lineWidth: 10))
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
    }
}
struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
    }
}
