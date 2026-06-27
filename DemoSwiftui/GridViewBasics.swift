//
//  GridViewBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 26/06/26.
//

import SwiftUI

struct GridViewBasics: View {
    let colums : [GridItem] = [
//        GridItem(.fixed(90)),
//        GridItem(.fixed(90)),
//        GridItem(.fixed(90)),
//        GridItem(.fixed(90))
        
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())

//        GridItem(.adaptive(minimum: 90, maximum: 200)),
//        GridItem(.adaptive(minimum: 90, maximum: 200)),
//        GridItem(.adaptive(minimum: 90, maximum: 200)),
//        GridItem(.adaptive(minimum: 90, maximum: 200))
        
    ]
    
//    let rows = [
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
//    ]
    
    //let rows = Array(repeating: GridItem(.flexible(minimum: 50), spacing: 20), count: 4)
    
    let rows = Array(repeating: GridItem(.adaptive(minimum: 50), spacing: 20), count: 4)
    
    var body: some View {
//        ScrollView(.horizontal) {
//            LazyVGrid(columns: colums){
//                ForEach(1...100, id: \.self) { item in
//                    RoundedRectangle(cornerRadius: 12)
//                        .fill(Color.blue)
//                        .frame(width : 90, height: 90)
//                       
//                        .overlay {
//                            Text("Item \(item)")
//                                .foregroundColor(.white)
//                        }
//                }
//            }
//            .padding()
//        }
        
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: rows, spacing: 20) {
                
                ForEach(1...1000, id: \.self) { item in
                    
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.pink)
                        .shadow(color: .black, radius: 5, x: 10, y: 10)
                        .frame(width: 80, height: 80)
                        .overlay(
                            Text("\(item)")
                                .foregroundColor(.white)
                                .font(.title)
                        )
                }
            }
            .padding()
        }
       
    }
}

#Preview {
    GridViewBasics()
}
