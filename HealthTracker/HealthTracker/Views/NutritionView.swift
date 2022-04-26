//
//  Nutrition.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct NutritionView: View {
    var body: some View {
        VStack {
            Text("Log Your Meals")
                .padding(.top, 50)
                .font(.largeTitle)
                .padding(.bottom, 50)
            
//            CustomMealView()
            Spacer()
            NextButtonView()
                .padding(.bottom, 50)
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}

