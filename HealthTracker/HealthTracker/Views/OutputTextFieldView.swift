//
//  OutputTextFieldView.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct OutputTextFieldView: View {
    
    var category: String
    var text: String
    var body: some View {
        
        VStack {
            HStack {
                Text(category)
                    .foregroundColor(.black)
                    .background(Rectangle().fill(.white))
                    .font(Font.system(size: 20, weight: .medium, design: .monospaced))
                    .padding(.leading, 60)
                Spacer()
            }
            
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.white)
                    .frame(width: 300, height: 80)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                
                Text(text)
                    .padding(10)
                    .font(Font.system(size: 15, weight: .medium, design: .monospaced))
                    .frame(width: 280, height: 80)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct OutputTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        OutputTextFieldView(category: "BMI", text: "You drank less than 13 cups of water. You need to drink more water!")
    }
}
