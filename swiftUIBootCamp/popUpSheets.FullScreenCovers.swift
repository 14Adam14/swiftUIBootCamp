
import SwiftUI



struct popUpSheets_FullScreenCovers: View {
    
    
    @State var showSheet: Bool = false
    
    
    var body: some View {
        
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            
            Button {
                showSheet.toggle()
            } label: {
                Text("button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(10)
                    .background(Color.white.cornerRadius(10))
                
            }
            
           // .fullScreenCover(isPresented: $showSheet, content: { SecondScreen() })
            
            
            .sheet(isPresented: $showSheet) {
                SecondScreen()
                // pravilo - 1 ekran i nikakoi propiski tyt logiki if/else i td
                // delat eto mojno cherez privyazky peremennyh k tomy ekrany
            }
        }
        
        
        
        
    }
}


struct SecondScreen: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(10)
                
            }
          
        }
    }
}




struct popUpSheets_FullScreenCovers_Previews: PreviewProvider {
    static var previews: some View {
        popUpSheets_FullScreenCovers()
        //SecondScreen()
    }
}
