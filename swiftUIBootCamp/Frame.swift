
import SwiftUI

struct Frame: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
//            //.frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
        
            .frame(height: 100, alignment: .top)
            .background(Color.brown)
            .frame(width: 150)
            .background(Color.pink)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.cyan)
            .frame(height: 400)
            .background(Color.gray)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
    }
    
}


struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        Frame()
    }
}


