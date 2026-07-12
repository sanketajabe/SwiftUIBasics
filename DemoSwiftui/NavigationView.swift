//
//  NavigationView.swift
//  DemoSwiftui
//
//  Created by Muvi on 11/07/26.
//

import SwiftUI

struct NavigationView: View {
    @State private var showDetail = false
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                //                Text("Home Screen")
                //                    .font(.largeTitle)
                //
                //                NavigationLink("Go to Details") {
                //                    ScrollviewBasics()
                //                }
                //                .buttonStyle(.borderedProminent)
                //            }
                //            .navigationTitle("Home")
                //            .navigationBarTitleDisplayMode(.inline)
                //            .navigationBarItems(trailing:
                //                                    Button("", systemImage: "person.circle.fill",
                //                                           action: {
                //
                //            }
                //                                          )
                //                                        .foregroundStyle(Color(.blue))
                //                                        .frame(width: 25, height: 25)
                //
                //            )
                
//                Button("Open Detail") {
//                    showDetail = true
//                }
//                
//                .navigationDestination(isPresented: $showDetail) {
//                    ImageViewBasics()
//                }
                NavigationLink("GoToDetailsPage", destination: {
                    Text("Second Screen")
                        //.toolbar(.hidden, for: .navigationBar)
                })
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        print("Menu")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("Profile")
                    } label: {
                        Image(systemName: "person.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationView()
}
