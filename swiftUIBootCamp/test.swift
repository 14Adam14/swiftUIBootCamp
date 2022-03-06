
import SwiftUI

struct test: View {

    
    
    var body: some View {
       Home()
}
    
    
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}



struct Home: View {
    @State var maxHeight: CGFloat = UIScreen.main.bounds.height / 3
    
    
    // slider property
    @State var sliderProperty: CGFloat = 0
    @State var sliderHeight: CGFloat = 0
    @State var lastDragvalue: CGFloat = 0
    
    var body: some View {
        NavigationView{
            VStack{
                //slider
                
                
                
                ZStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.black)
                        .opacity(0.15)
                    
                    Rectangle()
                        .fill(.white)
                        .frame(height:sliderHeight)
                    
                }
                .frame(width: 100, height: maxHeight)
                .cornerRadius(35)
                .gesture(DragGesture(minimumDistance: 0).onChanged({ value in
                    // get drag value
                }).onEnded({ (value) in
                    //
                }))
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.pink)
            .preferredColorScheme(.dark)
            .navigationTitle("dashboard")
            
            
        }
    }
}
