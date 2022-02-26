
import SwiftUI

struct ExctractSubviews: View {
    
    
    var body: some View {
        
        ZStack {
            Color
                .mint
                .ignoresSafeArea()
            
            
            contentLayer

         
        }
       
    }
    
    
    
        
        var contentLayer: some View {
            HStack {
                MyItem(title: "peaaazze", count: 45, color: .white)
                MyItem(title: "azzeg", count: 31, color: .red)
                MyItem(title: "hhhiivfd", count: 11, color: .green)
            }
        }
    
    
        
    }
    
    



//  dlya dinamicheskix dannyx lychshe ispolzovat extract kak tut


// a dlya statichnyx dannyx lychshe isp prosto peremennye kak v proshlom uroke





struct ExctractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        ExctractSubviews()
    }
}

struct MyItem: View {
    
    
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
