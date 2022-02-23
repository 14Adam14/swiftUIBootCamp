
import SwiftUI


struct Transition: View {
    
    @State var showView: Bool = false
    
    
    var body: some View {
       
        
        // v kratce trnsition nyzhen kogda hochesh ispolzovat poyzvlyaushiesya obecty a animacci dlya yzhe imeushihsya obektov na ekrane
        
        
        ZStack (alignment: .bottom) {
            
            
            
            
            VStack {
                Button("button") {
                    showView.toggle()                }
                Spacer()
            }
            
            if showView {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: UIScreen.main.bounds.height * 0.5)
                .transition(.asymmetric(
                    insertion: .move(edge: .bottom),
                    removal: AnyTransition.opacity.animation(.easeInOut)
                ))
                .animation(Animation.easeInOut, value: showView)
                
              //.transition(AnyTransition.scale.animation(.easeInOut))
              //.transition(AnyTransition.opacity.animation(.easeInOut))
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
    
    
    
    
    
}







struct Transition_Previews: PreviewProvider {
    static var previews: some View {
        Transition()
    }
}
