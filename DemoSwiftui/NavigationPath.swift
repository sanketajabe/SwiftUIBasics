//
//  NavigationPath.swift
//  DemoSwiftui
//
//  Created by Muvi on 11/07/26.
//

import SwiftUI

struct NavigationPathBasics : View {

    @State private var path = NavigationPath()

    var body: some View {

        NavigationStack(path: $path) {

            VStack {

                Button("Screen 1") {
                    path.append("Screen1")
                }
            }
            .navigationDestination(for: String.self) { value in

                if value == "Screen1" {
                    ScreenOne(path: $path)
                } else if value == "Screen2" {
                    ScreenTwo()
                }
            }
        }
    }
}

struct ScreenOne: View {

    @Binding var path: NavigationPath

    var body: some View {

        Button("Next") {
            path.append("Screen2")
        }
    }
}

struct ScreenTwo: View {

    var body: some View {
        Text("Last Screen")
    }
}


#Preview {
    NavigationPathBasics()
}
