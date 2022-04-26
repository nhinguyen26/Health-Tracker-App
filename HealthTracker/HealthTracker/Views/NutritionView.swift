import SwiftUI


class DummyData: Identifiable {
    var dummy1: String
    
    init(dummy1: String) {
        self.dummy1 = dummy1
    }
}
struct NutritionView: View {
    
    @State var list = [DummyData(dummy1: "")]
    
    var body: some View {
        
        
    VStack {
        Text("Log Your Meals")
            .padding(.top, 50)
            .font(.largeTitle)
            .padding(.bottom, 50)
        
        List {
            ForEach(list) {item in
                CustomMealView()
            }
        }
        
        /*
        //ADD BUTTON
        Button(action: {
            list.append(DummyData(dummy1: ""))
        }, label: {NextButtonView(text: "Add View")})
        
        //REMOVE BUTTON
        Button(action: {
            list.remove(at: 0)
        }, label: {NextButtonView(text: "Rem View")})
        */
        
        
        Spacer()
        
        NavigationLink(destination: {DataOutputView()}, label: {NextButtonView()})
            .padding(25)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct NutritionView_Previews: PreviewProvider {
    static var previews: some View {
        NutritionView()
    }
}
