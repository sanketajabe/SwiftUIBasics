//
//  ScrollviewBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 26/06/26.
//

import SwiftUI

struct ScrollviewBasics: View {
    var body: some View {
        //        ScrollView(.vertical, showsIndicators: false) {
        //            VStack{
        //                ForEach(1...100, id: \.self){number in
        //                    Text("\(number).")
        //                        .padding(.top, 10)
        //                        .padding(.trailing, 300)
        //                }
        //            }
        //            .padding(.top, 50)
        //
        //        }
        //.scrollIndicators(.hidden)
        
        
        ScrollView{
            LazyVStack {
                ForEach (0..<100) { index in
                    ScrollView(. horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach (0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 160, height: 160)
                                    .shadow(color:.black ,radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    ScrollviewBasics()
}
