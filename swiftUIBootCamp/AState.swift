

import SwiftUI

struct AState: View {
    
    
    
    var body: some View {
     
        
        
        
        
        
        
        ZStack {
            //background
            Color.red
                .ignoresSafeArea(.all)
            
            
            
            
            
            //content
            VStack(spacing: 20) {
                Text("title")
                Text("Count: 1")
            
            
            HStack(spacing: 20) {
                Button("button1") {
                    //
                }
                
                Button("button2") {
                    //
                }
            }
            }
        }
    }
    
    
    
    
    
}








struct AState_Previews: PreviewProvider {
    static var previews: some View {
        AState()
    }
}
