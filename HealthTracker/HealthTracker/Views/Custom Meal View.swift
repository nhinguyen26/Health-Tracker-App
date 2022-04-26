//
//  Custom Meal View.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//  Ref: https://www.appcoda.com/swiftui-camera-photo-library/

import SwiftUI

struct CustomMealView: View {
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    
    var body: some View {
        VStack {
            Image(uiImage: self.image)
                .resizable()
                .frame(width: 200, height: 150)
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                self.isShowPhotoLibrary = true
            }) {
                HStack {
                    Image(systemName: "photo")
                        .font(.system(size: 20))
        
                    Text("Photo library")
                        .font(.headline)
                }
                .frame(width: 200, height: 150)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
                .padding(.horizontal)
            }
        }
        .sheet(isPresented: $isShowPhotoLibrary) {
            ImagePicker(selectedImage: self.$image, sourceType: .photoLibrary)
        }
    }
}

struct CustomMealView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMealView()
    }
}

