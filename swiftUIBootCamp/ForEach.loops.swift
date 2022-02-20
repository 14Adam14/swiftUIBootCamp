

import SwiftUI

struct ForEach_loops: View {
    
    
    let data: [String] = ["hi", "kery", "lerpa"]
    let myString: String = "Hello"
    
    
    var body: some View {
        
        
       
        
        
        VStack {
            
            ForEach(data.indices) { index in
                Text("\(data[index]) \(index)")
            }
          
            
            //eto  bystryi i effectivnyi sposob vivida bolshix naborov dannix raznogo tipa v t ch  images and data and another
            
            
            
            
            
            //ForEach(0..<10) { index in
            //    //Text("li: \(index)")
            //    HStack {
            //        Circle()
            //            .frame(width: 30, height: 30)
            //        Text("Index is \(index)")
            //    }
            
            
            
            }
            
        }
    }










struct ForEach_loops_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_loops()
    }
}




