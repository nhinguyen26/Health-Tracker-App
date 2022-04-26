import SwiftUI

struct CustomMealView: View {
    @State private var isShowPhotoLibrary = false
    @State private var image = UIImage()
    @State private var meal: String = ""
    @State private var name: String = ""
    @State private var calories: String = ""
    
    let themePurple: Color = Color(CGColor(red: 164/255, green: 150/255, blue: 250/255, alpha: 1))
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(themePurple)
                .frame(width: 300, height: 180)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 0)

            VStack {
                HStack(alignment: .center) {
                    TextField("Meal", text: $meal)
                        .foregroundColor(.white)
                        .fixedSize()
                        .padding(.leading, 95)

                    Spacer()
        
                    Button(action: {
                        addItem()
                    }, label: {
                        ZStack() {
                            Circle()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                        Image(systemName: "plus")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 15, height: 20)
                            .foregroundColor(themePurple)
                        }
                    })
                    .padding(.trailing, 85)
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
                                .frame(width: 150, height: 100)
                                .edgesIgnoringSafeArea(.all)
                                
                            
                            Button(action: {
                                self.isShowPhotoLibrary = true
                            }) {
                                HStack {
                                    Text("Select photo")
                                        .font(.system(size: 12))
                                }
                                .frame(width: 120, height: 50)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding(.horizontal)
                            }
                        }
                        
                        VStack {
                            TextField("Enter name", text: $name)
                                .foregroundColor(.white)
                                .fixedSize()
                                
                            
                            TextField("Enter calories", text: $calories)
                                .foregroundColor(.white)
                                .fixedSize()
                                
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
