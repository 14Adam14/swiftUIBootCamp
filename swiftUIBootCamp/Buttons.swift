
import SwiftUI

struct Buttons: View {
    
    
    
    
    @State var title = "Le titile dei"
    
    
    
    var body: some View {
 
        VStack(spacing: 40) {
            
            
            Text(title)
            
            
            Button("Vies") {
                self.title = "button 1 pressed"
            }
            .accentColor(.red)
            
            
            
            Button {
                self.title = "save button"
            } label: {
                Text("save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }

            
            
            Button {
                self.title = "heart button pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 76, height: 76)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.888, brightness: 0.74))
                    )
            }

            
            Button {
                self.title = "finish button"
            } label: {
                Text("finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                
                
            }

            
            
        }
        
        
        
        
        
        
    }
}







struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
