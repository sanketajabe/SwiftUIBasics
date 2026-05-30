//
//  ContentView.swift
//  DemoSwiftui
//
//  Created by Muvi on 27/05/26.
//

import SwiftUI

import SwiftUI

struct ContentView: View {

    var body: some View {
       //Homeview()
        VStack(spacing: 5) {

            ZStack {

                ForEach([
                    (360.0, 2.0),
                    (350.0, 2.0),
                    (300.0, 40.0),
                    (250.0, 2.0),
                    (240.0, 2.0)
                ], id: \.0) { item in

                    Circle()
                        .stroke(Color.white,
                                lineWidth: item.1)
                        .frame(width: item.0,
                               height: item.0)
                }

                Image(systemName: "applelogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                Color.gray.opacity(0.7),
                                Color.secondary.opacity(0.5),
                                Color.gray.opacity(0.6)
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
            
            
            // MARK: - Bottom Rectangle
            ZStack() {

                RoundedRectangle(cornerRadius: 45)
                    .stroke(Color.white, lineWidth: 2)
                    .frame(width: 90, height: 200)

                RoundedRectangle(cornerRadius: 45)
                    .stroke(Color.white, lineWidth: 2)
                    .frame(width: 80, height: 190)

                RoundedRectangle(cornerRadius: 45)
                    .fill(Color.white)
                    .frame(width: 70, height: 180)
            }
           
            VStack{
                Text("iPhone 14 Pro")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    
            }
            
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity)
        
        .background(
            LinearGradient(
                colors: [
                    Color.teal.opacity(0.6),
                    Color.teal.opacity(0.2),
                    Color.teal.opacity(0.1)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }
}

#Preview {
    ContentView()
}



struct Homeview : View {
    var body : some View{
        Text("Home Screen")
    }
}
