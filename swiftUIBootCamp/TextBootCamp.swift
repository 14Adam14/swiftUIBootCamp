//
//  TextBootCamp.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World! Mery ilpe aery nery pe. Netip n45 bery ldiazery Hello, World! Mery ilpe aery nery pe. Netip n45 bery ldiazery".capitalized)
        
//            .font(.body)
//        //  .fontWeight(.semibold)
//            .bold()
//        //  .underline()
//            .italic()
//        //  .strikethrough()
//            .underline(true, color: Color.red)
//            .strikethrough(true, color: Color.brown)
        
        
            
         //   .font(.system(size: 24, weight: .semibold, design: .serif))
        
        //    .baselineOffset(10.0)
        //    .kerning(1.0)
              .multilineTextAlignment(.leading)
              .foregroundColor(.red)
              .frame(width: 200, height: 100, alignment: .leading)
              .minimumScaleFactor(0.1)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
