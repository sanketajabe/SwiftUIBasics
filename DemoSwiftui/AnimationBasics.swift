//
//  AnimationBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 02/07/26.
//

import SwiftUI

struct AnimationBasics: View {
    @State var isAnimated : Bool = false
    @State var time : Double = 10.0
    var body: some View {
        Button("Animate"){
//            withAnimation(Animation.default.repeatForever(autoreverses: true)){
//                isAnimated.toggle()
//            }
            
            withAnimation(Animation.default.delay(0.2)){
                isAnimated.toggle()
            }
        }
        
        .padding(.all, 10)
        .padding(.horizontal, 10)
      
        .background(isAnimated ? Color.primary : Color.yellow)
        .accentColor(.pink)
        .cornerRadius(20)
       
        
//        RoundedRectangle(cornerRadius: 20)
//            .foregroundStyle(isAnimated ? Color.red : Color.green)
//            .frame(width: 100, height: 100)
//            .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//            .padding(.top, 100)
//            .offset(y : isAnimated ? 200 : 0)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(Animation.linear(duration: time))
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(Animation.easeIn(duration: time))
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(Animation.easeInOut(duration: time))
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(.easeOut(duration: time))
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(Animation.spring)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: isAnimated ? 350 : 100, height:  100)
            .padding(.top, 10)
            .animation(Animation.spring(response: 1.0, dampingFraction: 0.2, blendDuration:  1.0))
        
        
            
    }
}

#Preview {
    AnimationBasics()
}
