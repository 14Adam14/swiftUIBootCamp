//
//  Icons.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        Image(systemName: "ladybug.fill")
            .renderingMode(.original)
            .resizable() // stanovitsya pod razm ramki
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.scaledToFill()
            //.font(.largeTitle)
            //.font(.system(size: 200))
            //.foregroundColor(.pink)
            //.foregroundColor(Color("CustomColor"))
            .frame(width: 300, height: 300)
            //.clipped()
        
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
