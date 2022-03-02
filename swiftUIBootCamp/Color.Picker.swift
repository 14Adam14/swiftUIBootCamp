
import SwiftUI

struct Color_Picker: View {
    
    @State var backGro: Color = .green
    
    var body: some View {
        
        
        ZStack {
            backGro
                .ignoresSafeArea()
            ColorPicker("select a color",
                        selection: $backGro,
                        supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
    }
    
    
}



struct Color_Picker_Previews: PreviewProvider {
    static var previews: some View {
        Color_Picker()
    }
}
