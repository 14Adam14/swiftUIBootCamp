

import SwiftUI

struct Toggle_: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            Text("status: ")
            Text(toggleIsOn ? "online" : "offline")
                .font(.title)
            
            Toggle(
                isOn: $toggleIsOn) {
                    Text("change status")
                }
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}




struct Toggle__Previews: PreviewProvider {
    static var previews: some View {
        Toggle_()
    }
}
