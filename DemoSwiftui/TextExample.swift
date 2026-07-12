//
//  TextExample.swift
//  DemoSwiftui
//
//  Created by Muvi on 30/05/26.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        Text("Welcome to SwiftUI")
        //Text("Welcome to SwiftUI".lowercased())
            .textCase(.uppercase)
            //.font(.largeTitle)
            //.fontWeight(.black)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .foregroundColor(.brown)
            .baselineOffset(20)// gives space in two lines
            .font(.system(size: 30, weight: .bold, design: .monospaced))
            .kerning(1.2)// gives space between two letters
            //.italic()
            .underline(true, color: .yellow) // gives underline to the text with color
            .strikethrough(true, color: .mint)
            .frame(width: 400,height: 200,alignment: .center)
        
            
    }
}

#Preview {
    TextExample()
        .preferredColorScheme(.dark)
}
