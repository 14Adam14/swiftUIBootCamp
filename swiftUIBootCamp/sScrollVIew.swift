
import SwiftUI

struct sScrollVIew: View {
    
    
    
    var body: some View {
        
        
        
        ScrollView {
            
            LazyVStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                            
                        }
                    }
                    
                }
                
            }
            
        }
        
        
        
    }
}








struct sScrollVIew_Previews: PreviewProvider {
    static var previews: some View {
        sScrollVIew()
    }
}







//ScrollView(.horizontal, showsIndicators: true) {
//HStack {
//
//        ForEach(0..<50) { Index in
//            Rectangle()
//                .fill(Color.blue)
//                .frame(width: 300,height: 300)
//        }
//}
//
//}
