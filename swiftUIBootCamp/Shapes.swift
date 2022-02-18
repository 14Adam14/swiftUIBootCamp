//
//  ShapesBootCamp.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .continuous)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.brown)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.cyan)
            //.stroke(lineWidth: 12)
            //.stroke(Color.blue, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [35]))
            .trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 30)
            .frame(width: 300, height: 200)
        
        
    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
