
import SwiftUI

struct add_Markups_Docum: View {
    
    //MARK: - properties
    
    @State var data: [String] = [
        "apples", "oranges", "bananas"
    ]
    @State var showAlert: Bool = false
    
    // Adam do le he
    /*
     fsfesf
     safsfsf
     afaff
     fsefsfsfseffefsfsfsefes
     */
    
    //MARK: - body
    
    
    
    var body: some View {
        NavigationView {   // start nav
            ZStack {
                //background
                Color.red.ignoresSafeArea()
                
                //foreground
                foreLayer
                    .navigationTitle("documentation")
                    .navigationBarItems(trailing:
                                            Button("Alert", action: {
                        showAlert.toggle()
                    })
                    )
                    .alert(isPresented: $showAlert) {
                        getAlert(text: "alaaarm")
                    }
            }
        }   // end nav
        
    }
    ///layer for scroll
    private var foreLayer: some View {
        ScrollView {   // start scroll
            Text("holla")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // end scroll
    }
    //MARK: - func
    
    /// get alert title
    ///
    ///this functuion create trata ta ta ta and te
    ///---
    ///getAlert(text: String) -> Alert i td
    ///---
    /// 
    /// - Parameter text: text for alert
    /// - Returns: return alert with title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
}


//MARK: - preview

struct add_Markups_Docum_Previews: PreviewProvider {
    static var previews: some View {
        add_Markups_Docum()
    }
}
