
import SwiftUI

struct Picker_Pickerstyle: View {
    
    @State var selection : String = "1"
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Age:")
                Text(selection)
            }
            
            
            Picker(
                selection: $selection) {
                    ForEach(18..<100) { number in
                        Text("\(number)")
                            .font(.headline)
                            .foregroundColor(.red)
                            .tag("\(number)")
                        
                    }
            } label: {
                Text("picker")
        }
            .pickerStyle(WheelPickerStyle())
           // .background(Color.gray.opacity(0.3))
         
            
        }

    }
}




struct Picker_Pickerstyle_Previews: PreviewProvider {
    static var previews: some View {
        Picker_Pickerstyle()
    }
}
