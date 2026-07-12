//
//  SheetsBascis.swift
//  DemoSwiftui
//
//  Created by Muvi on 06/07/26.
//

import SwiftUI

struct SheetsBascis: View {
    @State var showSheet : Bool = false
    
    var body: some View {
        ZStack{
            Color.pink
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Show Sheet"){
                    showSheet.toggle()
                }
                .font(.title)
                .padding(.top, 20)
                .foregroundStyle(Color.black)
                Spacer()
            }
            
            //Method 1 to show sheet
//            .sheet(isPresented: $showSheet, content: {
//                Newscreen()
//            })
            
            
            //Method 2 using transition
            
            ZStack{
                if showSheet{
                    Newscreen(showSheet: $showSheet)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
            }
            .zIndex(2.0)
            
            
            //Method 3 using Animation
            
//            Newscreen(showSheet: $showSheet)
//                .padding(.top, 100)
//                .offset(y: showSheet ? 0 : UIScreen.main.bounds.height)
//                .animation(.default)
               
        }
    }
}

struct Newscreen : View {
   // @Environment(\.presentationMode) var presentationMode
    //@Environment(\.dismiss) private var dismiss
    @Binding var showSheet : Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button{
                //presentationMode.wrappedValue.dismiss()
                //dismiss()
                showSheet.toggle()
            }label: {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(Color.black)
                    .font(.largeTitle)
                    .padding(20)
                    
            }
        }
    }
}

#Preview {
    SheetsBascis()
}
