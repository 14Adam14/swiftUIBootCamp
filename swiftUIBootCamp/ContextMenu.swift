
import SwiftUI




struct ContextMenu: View {
    
    
    @State var backgroundColor: Color = Color(hue: 0.704, saturation: 0.9, brightness: 0.82)
    
    var body: some View {
        
        
        
        
        VStack(alignment: .leading, spacing: 10.0) {
            
            Image(systemName: "house.fill")
                .font(.title)
            Text("swi think")
                .font(.headline)
            Text("use context menu")
                .font(.subheadline)
            
            
            
            
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu {
            Button {
                backgroundColor = .red
            } label: {
                Label("share post", systemImage: "flame.fill")
            }
            
            Button {
                backgroundColor = .yellow
            } label: {
                Text("report post")
            }

            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("like post")
                    Image(systemName: "heart.fill")
                }
            }

            

          
        }
    }
}



struct ContextMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenu()
    }
}
