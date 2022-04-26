//
//  SingleMoodContainerView.swift
//  HealthTracker
//
//  Created by Matthew Phua on 4/25/22.
//

import Foundation
import SwiftUI

struct SingleMoodContainerView: View {
    var mood: String
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))

    var body: some View {
        HStack {
            Text(mood).padding(.trailing, 15).font(.subheadline)
            Image(mood)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(themePurple, lineWidth: 10))
        }
    }
}
struct SingleMoodContainerView_Previews: PreviewProvider {
    static var previews: some View {
        SingleMoodContainerView(mood:"happy")
    }
}
