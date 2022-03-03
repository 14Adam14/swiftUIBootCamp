

import SwiftUI

struct Slider_: View {
    
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    
    var body: some View {
        VStack {
            Text("rating")
            Text(
                String(format: "%.0f", sliderValue)
                
                //"\(sliderValue)"
                
            )
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("title")
                }
            
            
            )
                .accentColor(color)
        }
    }
    
}




struct Slider__Previews: PreviewProvider {
    static var previews: some View {
        Slider_()
    }
}
