// Adam Bolotov

import SwiftUI



struct iTextField: View {
    
    @State var textField: String = ""
    @State var dataArray: [String] = []
    
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
                    if textIsAppropriate() {
                        saveText()
                    }
                   
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text("data")
                }
                
Spacer()
            }
            .padding()
            .navigationTitle("text field")
        }
       
    }
    
    func textIsAppropriate() -> Bool {
        if textField.count >= 3 {
            return true
        }
        return false
    }
    
    func saveText() {
        dataArray.append(textField)
        textField = ""
    }
}

struct iTextField_Previews: PreviewProvider {
    static var previews: some View {
        iTextField()
    }
}


