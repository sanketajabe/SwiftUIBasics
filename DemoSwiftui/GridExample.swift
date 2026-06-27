//
//  GridExample.swift
//  DemoSwiftui
//
//  Created by Muvi on 27/06/26.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct GridExample: View {
    
    let products = [
        Product(name: "iPhone", image: "iphone"),
        Product(name: "iPad", image: "ipad"),
        Product(name: "MacBook", image: "laptopcomputer"),
        Product(name: "Apple Watch", image: "applewatch"),
        Product(name: "AirPods", image: "airpods"),
        Product(name: "Apple TV", image: "tv"),
        Product(name: "Vision Pro", image: "visionpro"),
        Product(name: "HomePod", image: "homepod"),
        Product(name: "Camera", image: "camera"),
        Product(name: "Headphones", image: "headphones"),
        Product(name: "Keyboard", image: "keyboard"),
        Product(name: "Mouse", image: "computermouse"),
        Product(name: "Monitor", image: "display"),
        Product(name: "Desktop PC", image: "desktopcomputer"),
        Product(name: "Printer", image: "printer"),
        Product(name: "Game Controller", image: "gamecontroller"),
        Product(name: "Speaker", image: "hifispeaker"),
        Product(name: "Router", image: "wifi.router")
    ]
    
    let Columns = [
        GridItem(.fixed(120), spacing: 40),
        GridItem(.fixed(120))
    ]

    
    var body: some View {
        ScrollView() {
            Text("List Of  Products")
                .font(.largeTitle)
                .padding(.top, 50)
                .foregroundStyle(.blue)
            LazyVGrid(columns: Columns, spacing: 20) {
                ForEach(products) { product in
                    
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 140, height: 100)
                        .foregroundColor(Color.white.opacity(1))
                        .shadow(color: .black, radius: 3)
                        .overlay(
                            VStack{
                                Image(systemName: product.image)
                                    .font(.system(size: 40))
                                    .foregroundStyle(.blue)
                                
                                Text(product.name)
                                    .font(.headline)
                            }
                        )  
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    GridExample()
}
