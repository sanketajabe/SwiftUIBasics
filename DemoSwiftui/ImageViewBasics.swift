//
//  ImageViewBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 04/06/26.
//

import SwiftUI

struct ImageViewBasics: View {
    var body: some View {
        Image(systemName: "person.badge.plus.fill")
            .resizable()
            .renderingMode(.original)
            .frame(width: 200, height: 200)
            //.aspectRatio(contentMode: .fit)
            //.aspectRatio(contentMode: .fill)
            //.clipped()
            //.scaledToFit()
            .scaledToFill()
        
        Image("logo")
            .renderingMode(.template)
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .foregroundColor(.pink)
            
       
        
    }
}

#Preview {
    ImageViewBasics()
}
