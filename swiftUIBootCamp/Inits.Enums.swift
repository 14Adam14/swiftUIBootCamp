
import SwiftUI

struct Inits_Enums: View {
    
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    
    
    init(count: Int, fruit: Fruit) {
       
        self.count = count
      
        if fruit == .apple {
            self.title = "Apple"
            self.backgroundColor = .red
        } else {
            self.title = "Grapes"
            self.backgroundColor = .purple
        }
    }
    
    
    enum Fruit {
        case apple
        case grapes
    }
    
    
    var body: some View {
 
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}



struct Inits_Enums_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Inits_Enums(count: 100, fruit: .grapes)
            Inits_Enums(count: 46, fruit: .apple)
        }
    }
}
