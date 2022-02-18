//
//  ColorsBootCamp.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct ColorsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            
            .fill(
                
                //Color(.brown)
                //Color(hue: 0.732, saturation: 0.36, brightness: 0.72)
                //Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
                )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor")
                        .opacity(0.3),
            radius: 10, x: -20, y: -20)
        
        
    }

}

struct ColorsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootCamp()
            
            
    }
}
