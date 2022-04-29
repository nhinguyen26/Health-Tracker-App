//
//  CustomMealView.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//

import SwiftUI

struct CustomMealView: View {
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State private var meal: String = ""
    @State private var name: String = ""
    @State private var calories: String = ""
    @State private var hide: Double = 1.0
    
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(themePurple)
                .frame(width: 300, height: 180)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)

            VStack {
                HStack {
                    TextField("Meal", text: $meal)
                        .foregroundColor(.black)
                        .fixedSize()
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 250, height: 100)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)
                    HStack {
                        ZStack {
                            Image(uiImage: self.image)
                                .resizable()
                                .frame(width: 100, height: 80)
                                .edgesIgnoringSafeArea(.all)
                                
                            
                            Button(action: {
                                self.isShowPhotoLibrary = true
                                hide = 0.0
                            }) {
                                HStack {
                                    Text("Select photo")
                                        .font(.system(size: 12))
                                }
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding(.horizontal)
                            }
                            .opacity(hide)
            
                        }
                        
                        VStack {
                            TextField("Enter name", text: $name)
                                .foregroundColor(.black)
                                .fixedSize()
                                .font(Font.system(size: 15))
                                .padding(.trailing, 20)
                                
                            TextField("Enter calories", text: $calories)
                                .foregroundColor(.black)
                                .fixedSize()
                                .font(Font.system(size: 15))
                                .padding(.trailing, 20)
                                .offset(x:7)
                        }
                    }
                    
                }
                
            }
            .sheet(isPresented: $isShowPhotoLibrary) {
                ImagePicker(selectedImage: self.$image, sourceType: .photoLibrary)
            }
        }
    }
    func addItem() {
        }
}

struct CustomMealView_Previews: PreviewProvider {
    static var previews: some View {
        CustomMealView()
    }
}
