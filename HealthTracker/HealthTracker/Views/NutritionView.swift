//
//  NutritionView.swift
//  HealthTracker
//
//  Created by Verena Yiu on 4/25/22.
//


import SwiftUI

//class Food: Identifiable {
//    var foodName: String
//    var calories: String
//    init(foodName: String, calories: String) {
//        self.foodName = foodName
//        self.calories = calories
//    }
//}

class DummyData: Identifiable {
    var dummy1: String
    
    init(dummy1: String) {
        self.dummy1 = dummy1
    }
}

struct NutritionView: View {
    
    @State var list = [DummyData(dummy1: "")]
    @State var addData4: Bool = false
    
    let themeBackground: Color = Color(CGColor(red: 247/255, green: 251/255, blue: 254/255, alpha: 1))
    
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    var body: some View {
        ZStack {
            themeBackground
            
            VStack {
                Text("Log Your Meals")
                    .padding(.top, 50)
                    .font(.largeTitle)
                    .padding(.bottom, 50)
                
                LazyVStack{
                    ForEach(list) { item in
                        CustomMealView()
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 20)
                    .listRowBackground(themeBackground)
                }
                
                Spacer()
                
                HStack {
                    //ADD BUTTON
                    Button(action: {
                        if list.count < 3 {
                            list.append(DummyData(dummy1: ""))
                        }
                    }, label: {
                        ZStack() {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(themePurple)
                            Image(systemName: "plus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                    })
                    .padding(.trailing, 20)
                    
                    //REMOVE BUTTON
                    Button(action: {
                        if list.count > 0 {
                            list.remove(at: list.count-1)
                        }
                    }, label: {
                        ZStack() {
                            Circle()
                                .frame(width: 30, height: 30)
                                .foregroundColor(themePurple)
                            Image(systemName: "minus")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        }
                    })
                }
                
                Button(action: {
                    addData4 = true
                    Data.shared.outputReady = true
                    
                }, label: {NextButtonView().padding(.bottom, 50)})
                
                
                NavigationLink(isActive: $addData4, destination: {DataOutputView()}, label: {EmptyView()})
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}

