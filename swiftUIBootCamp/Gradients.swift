

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                //Color(.red)
    
//                LinearGradient(
//                    colors: [.purple, .blue, .green, Color("CustomColor")],
//                    startPoint: .top,
//                    endPoint: .bottomTrailing)
//
//                RadialGradient(
//                    colors: [.red, .purple],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
//
                AngularGradient(
                    colors: [.red, .purple],
                    center: .topLeading,
                    angle: .degrees(180 + 45))
                
                
                )
            .frame(width: 350, height: 250)
        
    }
}

struct Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Gradients()
    }
}
