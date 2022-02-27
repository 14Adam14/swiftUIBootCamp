
import SwiftUI

struct NavigatiomView_Link: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("hola world") {
                    MyOtherScreen()    //destination
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("all boxe")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
        }
        
    }
}

struct MyOtherScreen: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("veryle")
            
            NavigationLink("click the") {
                Text("leayi ne")
            }
        }
    }
}




struct NavigatiomView_Link_Previews: PreviewProvider {
    static var previews: some View {
        NavigatiomView_Link()
    }
}
