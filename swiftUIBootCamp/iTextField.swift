// Adam Bolotov

import SwiftUI



struct iTextField: View {
    
    @State var textField: String = ""
    
    var body: some View {
        
        
        NavigationView {
            VStack {
                TextField("type something here", text: $textField)
                    //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                
                Button {
                    //
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                }

            }
            .navigationTitle("text field")
        }
        
    }
}

struct iTextField_Previews: PreviewProvider {
    static var previews: some View {
        iTextField()
    }
}


