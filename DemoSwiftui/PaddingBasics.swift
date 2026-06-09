//
//  PaddingBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 09/06/26.
//

import SwiftUI

struct PaddingBasics: View {
    var body: some View {
//        VStack(alignment: .leading) {
//            Text("SwiftUI Basics")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//                .padding(.bottom, 20)
//            Text("In SwiftUI, .padding() can be applied to any view inside a VStack, HStack, or ZStack.")
//                .font(.headline)
//                .fontWeight(.semibold)
//        }
//        //.padding()
//        .padding(. vertical, 10)
//        .padding(.all, 10)
//        .background(
//        Color.white
//            .cornerRadius (10)
//            .shadow(
//        color: Color.black.opacity(0.5), radius: 10,
//        x: 0.0, y: 10)
//        )
        
        
        VStack(alignment: .center){
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .padding()
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 10)
                .cornerRadius(10)
                .overlay(
                    Text("Email Address")
                        .foregroundColor(Color.gray)
                        
                )
            
            Rectangle()
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .padding()
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 10)
                .cornerRadius(10)
                .overlay(
                    Text("Password")
                        .foregroundColor(Color.gray)
                        
                )
        }
        
    }
}

#Preview {
    PaddingBasics()
}
