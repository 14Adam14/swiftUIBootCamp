
import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
       
       
        
        
        VStack {
            Button("button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
       
            Text(isStartingState ? "start le" : "fin sta")
          
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
            // if isStartingState true to Color.red  inache  Color.blue
            
            
                    .frame(
                        
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50
   
                    )
            
           
            
            Spacer()
            
        }

        
    }
    
    
    
}





struct TernaryOperators_Previews: PreviewProvider {
    static var previews: some View {
        TernaryOperators()
    }
}
