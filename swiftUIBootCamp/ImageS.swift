//
//  ImageS.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct ImageS: View {
    var body: some View {
        Image("flame")
            //.renderingMode(.template)  // eto dlya png for change color
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.scaledToFill()
            .frame(width: 350, height: 300)
            //.foregroundColor(.red)
            //.clipped()
            //.cornerRadius(150)
//            .clipShape(
//                //Circle()
//                //RoundedRectangle(cornerRadius: 25)
//                //Ellipse()
//
//            )
               
            
            
    }
}

struct ImageS_Previews: PreviewProvider {
    static var previews: some View {
        ImageS()
    }
}
