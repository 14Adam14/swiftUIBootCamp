

import SwiftUI

struct iTextEditor: View {
    
    @State var textEditortext: String = "starting text"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditortext)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    .colorMultiply(Color(hue: 1.0, saturation: 0.012, brightness: 0.824))
                    .cornerRadius(10)
                Button {
                    savedText = textEditortext
                } label: {
                    Text("save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                }
                Text(savedText)
                Spacer()
            }
            .navigationTitle("tet editor bootcamp")
            .padding()
            //.background(Color.green)
            
            
            
        }
    }
    
    
    
}



struct iTextEditor_Previews: PreviewProvider {
    static var previews: some View {
        iTextEditor()
    }
}
