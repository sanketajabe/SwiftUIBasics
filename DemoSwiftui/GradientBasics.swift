//
//  GradientBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 02/06/26.
//

import SwiftUI

struct GradientBasics: View {
    var body: some View {
//        Circle()
//            .fill(LinearGradient(gradient: Gradient(colors: [Color.red,Color.blue, Color.green]), startPoint: .top, endPoint: .bottom))
//            .frame(width: 300, height: 300)
//            .padding(10)
//        
//        RoundedRectangle(cornerRadius: 20)
//            .fill(RadialGradient(colors: [Color.pink, Color.yellow, Color.red, Color.blue, Color.green, Color.indigo], center: .bottom, startRadius: 5, endRadius: 200))
//            .frame(width: 300, height: 200,alignment: .center)
        
       
//        Rectangle()
//            .fill(RadialGradient(colors: [Color.red, Color.orange, Color.yellow, Color.green, Color.blue, Color.indigo, Color.purple], center: .bottom, startRadius: 100, endRadius: 500))
//        
//            .frame(height: 500,alignment: .bottom)
        
        
        Circle()
            .fill(AngularGradient(colors: [Color.purple, Color.accentColor], center: .center, angle: .degrees(180)))
        
        Ellipse()
            .fill(AngularGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.green]), center: .center, angle: .degrees(279)))
            
    }
}

#Preview {
    GradientBasics()
}
