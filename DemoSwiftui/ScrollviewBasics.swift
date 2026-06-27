//
//  ScrollviewBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 26/06/26.
//

import SwiftUI

struct ScrollviewBasics: View {
    let colors: [Color] = [.red, .green, .blue, .yellow]
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
    
        /// Mark :- LazyVStack creates views only when they are about to appear on screen, making it much more efficient for large collections.
        
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
        
        
//        ScrollView {
//            VStack(spacing: 20) {
//                ForEach(1...20, id: \.self) { index in
//                    Text("Item \(index)")
//                        .frame(maxWidth: .infinity)
//                        .padding()
//                        .background(Color.blue.opacity(0.2))
//                        .cornerRadius(10)
//                }
//            }
//            .padding()
//        }
        
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(colors.indices, id: \.self) { index in
//                    RoundedRectangle(cornerRadius: 15)
//                        .fill(colors[index])
//                        .frame(width: 200, height: 150)
//                }
//            }
//            .padding()
//        }
    }
}

#Preview {
    ScrollviewBasics()
}
