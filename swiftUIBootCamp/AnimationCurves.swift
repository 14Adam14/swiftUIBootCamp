
import SwiftUI




struct AnimationCurves: View {
    
    
    @State var isAnimating: Bool = false
    
    let timing: Double = 10.0
    
    
    var body: some View {
       
        
        VStack {
            Button("button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)

        }
        
    }
    
    
    
}










struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves()
    }
}
