//
//  TextfieldBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 13/07/26.
//

import SwiftUI

struct TextfieldBasics: View {
    @State private var username = ""
     @State private var password = ""
     @State private var message = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .cornerRadius(10)
                    .background(Color.gray.opacity(0.3))
                    .foregroundStyle(Color.black)
                    .font(.headline)
                    
                SecureField("Password", text: $password)
                    .padding()
                    .cornerRadius(10)
                    .background(Color.gray.opacity(0.3))
                    .foregroundStyle(Color.black)
                    .font(.headline)
                    
                
               
            }
            .navigationTitle("Login")
            .font(.title)
        }
       
    }
}

#Preview {
    TextfieldBasics()
}
