
import SwiftUI





struct SheetsTransitionPopOver: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange
                .ignoresSafeArea()
            VStack {
                Button("button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
       
        // method 1 - sheet
//        .sheet(isPresented: $showNewScreen, content: {
//            NewScreen()
//        })

        
        // method 2 - transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring(), value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            
        // method 3 - animation offset
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
        }
        
    }
}


struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
            
            Button {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }

            
        }
        
    }
    
    
}




struct SheetsTransitionPopOver_Previews: PreviewProvider {
    static var previews: some View {
        SheetsTransitionPopOver()
        //NewScreen()
    }
}
