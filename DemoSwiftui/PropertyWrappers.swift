//
//  PropertyWrappers.swift
//  DemoSwiftui
//
//  Created by Muvi on 28/06/26.
//

import SwiftUI

struct PropertyWrappers: View {
    @State var backgoundColor : Color = .mint
    @State var count : Int = 0
    var body: some View {
        ZStack {
            backgoundColor.edgesIgnoringSafeArea(.all)
            contentView(backgoundColor: $backgoundColor, count: $count)
           
        }
    }
}

struct contentView : View {
    @Binding var backgoundColor : Color
    @Binding var count : Int
    var body: some View {
        VStack{
            Button(action: {
                backgoundColor = Color.yellow
            }, label: {
                Text("Change Color")
                    .font(Font.largeTitle)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .foregroundStyle(backgoundColor)
                    .shadow(color: .black, radius: 10)
            })
            
            Text("Count: \(count)")
                .font(.largeTitle)
            
            Button("Increase") {
                count += 1
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    PropertyWrappers()
}
