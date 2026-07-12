//
//  TransitionBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 05/07/26.
//

import SwiftUI

struct TransitionBasics: View {
    @State var showView = true
  
    var body: some View {
        ZStack(alignment: .bottom){
            VStack{
                Button("Transition"){
                    showView.toggle()
                }
                Spacer()
                if showView{
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.blue)
                        .frame(height : UIScreen.main.bounds.height/2)
                        //.transition(.move(edge: .bottom))
                        //.transition(.opacity)
                        //.transition(.scale)
                        //.transition(.scale(scale: 0.5))
                        //.transition(AnyTransition.opacity.animation(.easeInOut))
                        //.transition(AnyTransition.scale.animation(.easeInOut))
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .bottom)))
                        .animation(.default)
                }
                    
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    TransitionBasics()
}
