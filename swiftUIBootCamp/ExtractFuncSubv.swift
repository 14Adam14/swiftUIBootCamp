
import SwiftUI

struct ExtractFuncSubv: View {
    
    
    @State var backgroundColor: Color = Color.pink
    
    
    var body: some View {
        
        
        
        
        ZStack {
            //backgr
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            
            //content
            contentLayer
            
        }
    }
    
    
    
 
    var contentLayer: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
            
            Button {
                buttPess()
            } label: {
                Text("prasse")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }

    func buttPess() {
        backgroundColor = .yellow
    }
    
    
    
    
}




struct ExtractFuncSubv_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFuncSubv()
    }
}
