
import SwiftUI



struct onAppear_onDisappear: View {
    
    @State var myText: String = "start text"
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) {_ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                            count += 1
                        }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "new text"
                }
                
            })
            .onDisappear(perform: {
                myText = "end text"
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}




struct onAppear_onDisappear_Previews: PreviewProvider {
    static var previews: some View {
        onAppear_onDisappear()
    }
}
