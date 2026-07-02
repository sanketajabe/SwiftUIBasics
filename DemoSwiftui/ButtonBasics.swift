//
//  ButtonBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 27/06/26.
//

import SwiftUI

struct ButtonBasics: View {
    @State var title = "Button Click"
    @State private var count = 0
    @State private var showButton = true
    @State private var liked = false
    
    var body: some View {
        Text(title)
            .font(Font.title)
            .foregroundStyle(Color.red)
            .padding()
       Button(action: {
           self.title = "Button Clicked again"
       }, label: {
           Text("Click Here!")
               .font(.largeTitle)
               .foregroundStyle(Color.black.opacity(0.5))
       })
        
       .padding()
        Button("Sign In", action: {
            self.title = "Sign In Clicked"
        })
        .padding()
        .padding(.horizontal, 10)
       
        .accentColor(Color.black)
        .font(.title)
        .fontWeight(.bold)
        .background(
            LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing)
                .cornerRadius(30)
        )
        .shadow(radius: 5)

//        Button {
//            print("Play")
//        } label: {
//            
//            HStack {
//                Image(systemName: "play.fill")
//                    .font(.title)
//                    .foregroundStyle(.white)
//                    .frame(width: 70, height: 70)
//                    .background(Color.blue)
//                    .clipShape(Capsule())
//                Text("Watch now")
//            }
//            .padding()
//        }
        
        
        VStack(spacing: 20) {
            
            Button(showButton ? "Hide" : "Show") {
                showButton.toggle()
            }
            .frame(width: 200, height: 50)
            .border(Color.gray, width: 2)
            
            if showButton {
                Button("Second Button") {
                    print("Tapped")
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding()
        contentLayer
        
      
    }
    
    func checkStaus(){
        if liked{
            print("Liked")
            count += 1
        }else{
            print("Not Liked")
            count -= 1
        }
    }
    
    var contentLayer : some View {
        Button {
            
            liked.toggle()
            checkStaus()
            
            
        } label: {
            VStack{
                Image(systemName: liked ? "heart.fill" : "heart")
                    .font(.system(size: 40))
                    .foregroundStyle(.red)
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundStyle(Color.black)
            }
            
        }
        .padding()
    }
}

#Preview {
    ButtonBasics()
}
