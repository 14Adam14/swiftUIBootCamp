import SwiftUI

struct VHZ_Stackts: View {

    var body: some View {
        
        
//        ZStack(alignment: .center, content: {
//
//
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width: 250, height: 250)
//
//                Rectangle()
//                    .fill(Color.gray)
//                    .frame(width: 200, height: 200)
//
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//
//
//
//        })
        
        
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//
//            VStack(alignment: .leading, spacing: 30) {
//
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 159, height: 150)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//                HStack(alignment: .bottom) {
//
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.red)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 25, height: 25)
//
//
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//
//        }
       
        
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("78")
//                .font(.largeTitle)
//                .underline()
//            Text("ihbet hthj k jkjh")
//                .font(.caption)
//                .foregroundColor(.gray)
//
//        }
//
        
        
        
        VStack(spacing: 50) {
        
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                
            Text("1")
                .font(.title)
                .foregroundColor(.white)
        }

        
        Text("1")
            .font(.title)
            .foregroundColor(.white)
            .background(
                Circle()
                    .frame(width: 100, height: 100)
            )
        
        }
    }
}

struct VHZ_Stackts_Previews: PreviewProvider {
    static var previews: some View {
        VHZ_Stackts()
    }
}
