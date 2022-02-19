

import SwiftUI

struct SpacerS: View {
    var body: some View {
        
        
        VStack {
            HStack(spacing: 0) {
                
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .fill(Color.green)
    //                .frame(width: 50, height: 50)
    //
    //            Spacer()
    //                .frame(height: 10)
    //                .background(Color.orange)
    //
    //            Rectangle()
    //                .fill(Color.yellow)
    //                .frame(width: 50, height: 50)
    //
                Image(systemName: "xmark")
                   
                Spacer()
                    .frame(height: 10)
                  //  .background(Color.orange)
                
                Image(systemName: "gear")
                   
                
                
            }
            .font(.title)
          //  .background(Color.red)
            .padding(.all)
          // .background(Color.blue)
            Spacer()
                .frame(width:10)
              //  .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
        //.background(Color.yellow)
    }
}

struct SpacerS_Previews: PreviewProvider {
    static var previews: some View {
        SpacerS()
    }
}
