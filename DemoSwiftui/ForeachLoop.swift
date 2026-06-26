//
//  ForeachLoop.swift
//  DemoSwiftui
//
//  Created by Muvi on 20/06/26.
//

import SwiftUI

struct ForeachLoop: View {
    var body: some View {
        VStack{
            HStack{
                ForEach(1...5, id: \.self) { number in
                    Text("\(numberToWord(number:number))")
                        .padding(5)
                }
            }
            
            let numbers = [1,2,3,4,5,6]
            
            let fruits = ["Apple", "Banana", "Orange", "Mango"]

//            ForEach(numbers, id: \.self) { number in
//                if number % 2 == 0 {
//                    Text("Even \(number)")
//                } else {
//                    Text("Odd \(number)")
//                }
//            }
            HStack(spacing: 10){
                ForEach(fruits, id: \.self){fruit in
                    Text("\(fruit)")
                        .padding(4)
                }
            }
        }
       
        VStack {
            ForEach(1...3, id: \.self) { row in
                HStack {
                    ForEach(1...3, id: \.self) { column in
                        Text("(\(row),\(column))")
                            .padding(.top, 20)
                    }
                }
            }
        }
    }
}

func numberToWord(number: Int) -> String {
    switch number {
    case 1:
        return "One"
    case 2:
        return "Two"
    case 3:
        return "Three"
    case 4:
        return "Four"
    case 5:
        return "Five"
    default:
        return "Other"
    }
}

#Preview {
    ForeachLoop()
}
