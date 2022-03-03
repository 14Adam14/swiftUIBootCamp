
import SwiftUI


// имеются адаптивные цвета и не адаптивные  под  дарк вайт темы и цвета видимые в обоих режимах

struct Adapting_DarkMode: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing: 20) {
                    
                    Text("primary color")
                        .foregroundColor(.primary)
                    Text("secondary color")
                        .foregroundColor(.secondary)
                    Text("black color")
                        .foregroundColor(.black)
                    Text("white color")
                        .foregroundColor(.white)
                    Text("red color")
                        .foregroundColor(.red)
                    Text("adaptive color")
                        .foregroundColor(Color("adaptivC"))
                    Text("localy adaptive color")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                    
                }
            }
            .navigationTitle("dark mode")
        }
        
    }
    

}



struct Adapting_DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Adapting_DarkMode()
                .preferredColorScheme(.light)
            Adapting_DarkMode()
                .preferredColorScheme(.dark)
        }
        
       
    }
}
