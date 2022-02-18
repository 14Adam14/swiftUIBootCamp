
import SwiftUI

struct Background_Overlay: View {
    var body: some View {
        
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .background(
        //                //Color.red
        //                //LinearGradient(colors: [.green, .pink], startPoint: .leading, endPoint: .top)
        //                Circle()
        //                    .fill(LinearGradient(colors: [.red, .green], startPoint: .topLeading, endPoint: .trailing))
        //            )
        //            .frame(width: 120, height: 120, alignment: .center)
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [.green, .red], startPoint: .trailing, endPoint: .leading))
        //            )
        //
        //    }
        
        
//        Circle()
//            .fill(Color.blue)
//            .frame(width: 100, height: 100)
        
//            .overlay(
//            Text("11")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 110, height: 110)
//            )
        
        
        
        
//   Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                       , alignment: .bottomTrailing
//            )
        
        
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
            Circle()
                .fill(
                    LinearGradient(colors: [.red, .blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100)
                .shadow(color: .purple, radius: 10, x: 0.0, y: 10)
                .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 35, height: 35)
                        .overlay(
                        Text("5")
                            .font(.headline)
                            .foregroundColor(.white)
                        )
                        .shadow(color: .purple, radius: 10, x: 5, y: 5)
                    
                    ,alignment: .bottomTrailing)
                
                
            )
        
        
    }
    
}

struct Background_Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Background_Overlay()
    }
}
