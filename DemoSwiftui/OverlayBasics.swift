//
//  OverlayBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 06/06/26.
//

import SwiftUI

struct OverlayBasics: View {
    var body: some View {
//        RoundedRectangle(cornerRadius: 10)
//            .fill(Color.pink)
//            .frame(width: 200, height: 100, alignment: .center)
//            .overlay(
//                Text("Sign In")
//                    .font(.largeTitle)
//                    .foregroundColor(Color.white)
//            )
//        
//            .padding(100)
        
//        Circle()
//            .fill(Color.white)
//            .frame(width: 200, height: 200)
//            .overlay(
//                Circle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(Color.orange)
//                    .frame(width: 300, height: 300)
//            )
            
            Image(systemName: "heart.fill")
            .font(.system(size: 100))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .shadow(color: Color.black, radius: 20, x: 0, y: 0)
            )
        
            
    }
}

#Preview {
    OverlayBasics()
}
