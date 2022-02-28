

import SwiftUI





struct Alerts: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
  //@State var alertTitle: String = ""
   // @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    
    enum MyAlerts {
        case success
        case error
    }
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("buttn 1 here") {
                    alertType = .error
//                    alertTitle = "error loading video"
//                    alertMessage = "the video not uploaded"
                    showAlert.toggle()
                }
                Button("buttn 2 here") {
                    alertType = .success
//                    alertTitle = "succes upload 🙂"
//                    alertMessage = "video now is public"
                    showAlert.toggle()
                }
//
                    //Alert(title: Text("the error"))
            }
            .alert(isPresented: $showAlert) {
                        getAlert()
            }
        }
    }
    
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("was error"))
        case .success:
            return Alert(title: Text("it is sccess"), message: nil, dismissButton: .default(Text("ok"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("error"))
        }
 //       return
//        Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .default(Text("ok")))
        
        
//        Alert(
//            title: Text("alarata title"),
//            message: Text("describe error"),
//            primaryButton: .destructive(Text("delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel()
//        )
    }
}




struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        Alerts()
    }
}
