//
//  ShapesBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 31/05/26.
//

import SwiftUI

struct ShapesBasics: View {
    var body: some View {
        
        /// Mark : Circle
        Circle()
            .rotationEffect(.degrees(90))
        //.fill(Color.green)
        //.stroke(Color.green)
        //.stroke(lineWidth: 10)
            .frame(width: 100, height: 200)
        //.foregroundStyle(Color.yellow)
        //.stroke(.pink, style: StrokeStyle(lineWidth: 10, lineCap: .square, dash: [30]))
        //.padding(10)
        //.trim(from: 0.5, to: 1.0)
        //.stroke(Color.purple, lineWidth: 20)
        //.scaleEffect(0.2)
//            .shadow(
//                    color: .primary,
//                    radius: 15,
//                    x: 5,
//                    y: 5
//                )
        
//            .foregroundStyle(LinearGradient(
//                colors: [.blue, .purple],
//                startPoint: .top,
//                endPoint: .bottom
//            )
//        )
        
//            .stroke(
//                   Color.blue,
//                   style: StrokeStyle(
//                       lineWidth: 4,
//                       dash: [10, 5]
//                   )
//               )
           
            
        
            
        
        /// Mark : Ellipse
        Ellipse()
        //.fill(Color.green)
        //.stroke(Color.green)
        //.frame(width: 200, height: 200)
        //.foregroundStyle(Color.yellow)
        //.padding(10)
        .trim(from: 0.5, to: 1.0)
        
        /// Mark : Capsule
        Capsule()
            //.frame(width: 100, height: 200)
            //.foregroundColor(.mint)
            .stroke(Color.secondary,lineWidth: 10)
            //.frame(width: 200, height: 100)
        
        /// Mark : Rectangle
        Rectangle()
           
            //.frame(width: 300, height: 200)
            //.foregroundColor(.mint)
            //.stroke(Color.secondary,lineWidth: 10)
            //.padding([.top, .bottom, .trailing, .leading])
            //.frame(width: 200, height: 100)
            .trim(from: 0.5, to: 1.0)
            //.rotationEffect(.degrees(90))
        
        /// Mark : RoundedRectangle
        RoundedRectangle(cornerRadius: 20)
            //.strokeBorder(Color.blue, lineWidth: 10)
            //.frame(width: 300, height: 200)
            .foregroundColor(.indigo)
            //.stroke(Color.secondary,lineWidth: 10)
            .padding([.top, .bottom, .trailing, .leading])
            //.frame(width: 200, height: 100)
            
    
        
        
    }
}

#Preview {
    ShapesBasics()
}
