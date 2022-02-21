
import SwiftUI



struct bindingProperty: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColorR: $backgroundColor, titleT: $title)
            }

            
            
        }
    }
}





struct bindingProperty_Previews: PreviewProvider {
    static var previews: some View {
        bindingProperty()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColorR: Color
    @Binding var titleT: String
    
    @State var buttonColor: Color = Color.blue
    
    var body: some View {
        Button {
            backgroundColorR = Color.orange
            buttonColor = Color.pink
            titleT = "vaafsa"
        } label: {
            Text("button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
