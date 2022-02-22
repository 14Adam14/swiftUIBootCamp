
import SwiftUI

struct If_Else: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Button("circl button: \(showCircle.description)") {
                showCircle.toggle()
            }
            
            Button("rectl buttn: \(showRectangle.description) ") {
                showRectangle.toggle()
            }
            
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            } else {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 100)
            }
            
          
            Spacer()
            
            
            Text("Hello, World!")
        }
    }
}

struct If_Else_Previews: PreviewProvider {
    static var previews: some View {
        If_Else()
    }
}
