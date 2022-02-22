
import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
       
       
        
        
        VStack {
            Button("button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            if isStartingState {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.blue)
                    .frame(width: 200, height: 100)
            }
           
            
            Spacer()
            
        }

        
    }
    
    
    
}





struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
    }
}
