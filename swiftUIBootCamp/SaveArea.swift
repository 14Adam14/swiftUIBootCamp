
import SwiftUI

struct SaveArea: View {
    
    
    
    
    var body: some View {
        
        
        
        
        
        ScrollView {
            VStack {
                Text("Titltltl ekkefe")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                
                ForEach(0..<10) { Index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                    
                    
                    
                }
            }
            
            
        }
        .background(
            Color.red
                //.edgesIgnoringSafeArea(.all)   old
                .ignoresSafeArea()
        )
        
        
        
        
        
        
        
        
        
        
        
        
        
//        ZStack {
//
//
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
//
//
//            // foreground
//            VStack {
//                Text("Hello, World!")
//                    Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            //.background(Color.orange)
//
//
//
//
//        }
            //.edgesIgnoringSafeArea(.all)
        
        
        
        
    }
}







struct SaveArea_Previews: PreviewProvider {
    static var previews: some View {
        SaveArea()
    }
}
