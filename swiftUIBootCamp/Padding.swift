
import SwiftUI

struct Padding: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World")
            //            .background(Color.yellow)
            //            //.padding()
            //            .padding(.all, 10)
            //            .padding(.leading, 20)
            //            .background(Color.blue)
            
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            //            .frame(maxWidth: .infinity, alignment: .leading)
            //           // .background(Color.red)
            //            .padding(.leading, 20)
            
            Text("lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl lea pemerl")
            
        }
        .padding()
        .padding(.vertical, 10)
        
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
        
        
    }
}










struct Padding_Previews: PreviewProvider {
    static var previews: some View {
        Padding()
    }
}
