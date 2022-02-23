
import SwiftUI

struct AddingAnimations: View {
    
    
    @State var isAnimated: Bool = false
    
    
    
    var body: some View {
        VStack {
            Button("button") {
                withAnimation(
                    .default
                    //.repeatForever(autoreverses: true)  povtorenie bez limita
                    .repeatCount(5, autoreverses: true))
                {
                    isAnimated.toggle()
                }
                
            }
            
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0 ))
                .offset(y: isAnimated ? 300 : 0) // smeshenie
              //.animation(.default
                          //  .repeatForever(autoreverses: true))
            
            // mozhno i tak animirovat bez togo chto v knopke no chashe i lyche isp kak v knopke
            
//             v sled bloke modern metod napisania etogo  prim - .animation(
//                .easeInOut(duration: 1)
//                    .repeatForever(autoreverses: false),
//                value: animationAmount
//            )
            
            Spacer()
        }
    }
    
    
}





struct AddingAnimations_Previews: PreviewProvider {
    static var previews: some View {
        AddingAnimations()
    }
}
