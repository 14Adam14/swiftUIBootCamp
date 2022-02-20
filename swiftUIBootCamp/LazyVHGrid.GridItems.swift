

import SwiftUI




struct LazyVHGrid_GridItems: View {
    
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(Color.white)
                .frame(height: 400)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 150)
                }
            }
        }
      
        
        
        
    }
}

struct LazyVHGrid_GridItems_Previews: PreviewProvider {
    static var previews: some View {
        LazyVHGrid_GridItems()
    }
}
