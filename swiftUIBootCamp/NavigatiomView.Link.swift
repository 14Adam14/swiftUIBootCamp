
import SwiftUI


// праввило - 1 навегейшн вью на 1 вью не больше (тоесть не делть один внутри второго и тд)

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
            .navigationBarItems(
                leading:
                    
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(destination:
                    MyOtherScreen(),
                 label: {
                    Image(systemName: "gear")
                })
                    .accentColor(.red)
                )
        }
                
        
    }
}

struct MyOtherScreen: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("veryle")
                .navigationBarHidden(true)
            
            VStack {
                Button("back") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("click the") {
                    Text("leayi ne")
                }
            }
        }
    }
}




struct NavigatiomView_Link_Previews: PreviewProvider {
    static var previews: some View {
        NavigatiomView_Link()
    }
}
