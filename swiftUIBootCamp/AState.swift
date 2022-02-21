

import SwiftUI

struct AState: View {
    
    
    
   @State var backgroundColor: Color = Color.green
    
    
    
    var body: some View {
        
        ZStack {
            //background
            
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            
            
            
            
            //content
            VStack(spacing: 20) {
                Text("title")
                    .font(.title)
                Text("Count: 1")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("button1") {
                        backgroundColor = .black
                    }
                    
                    Button("button2") {
                        backgroundColor = .mint
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
    
    
    
    
    
}








struct AState_Previews: PreviewProvider {
    static var previews: some View {
        AState()
    }
}
