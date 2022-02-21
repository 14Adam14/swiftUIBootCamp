

import SwiftUI

struct AState: View {
    
    
    
   @State var backgroundColor: Color = Color.green
   @State var title: String = "title"
   @State var count: Int = 0
    
    
    
    var body: some View {
        
        ZStack {
            //background
            
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            
            
            
            
            //content
            VStack(spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("button1") {
                        backgroundColor = .black
                        title = "b1 pr"
                        count += 1
                    }
                    
                    Button("button2") {
                        backgroundColor = .mint
                        title = "b2 pr"
                        count -= 1
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
