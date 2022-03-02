
import SwiftUI



struct Stepper_: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncr: CGFloat = 0
    
    var body: some View {
        VStack {
            
            Stepper("stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncr, height: 100)
            
            Stepper("steper 2") {
                // increment
               incremWidth(amount: 10)
            } onDecrement: {
                // decrement
                incremWidth(amount: -10)
            }

        }
    }
    func incremWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthIncr += amount
        }
       
    }
}




struct Stepper__Previews: PreviewProvider {
    static var previews: some View {
        Stepper_()
    }
}
