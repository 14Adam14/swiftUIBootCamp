//
//  TextBootCamp.swift
//  swiftUIBootCamp
//
//  Created by user213083 on 2/18/22.
//

import SwiftUI

struct TextBootCamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.body)
        //  .fontWeight(.semibold)
            .bold()
        //  .underline()
            .italic()
        //  .strikethrough()
            .underline(true, color: Color.red)
            .strikethrough(true, color: Color.brown)
    }
}

struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
