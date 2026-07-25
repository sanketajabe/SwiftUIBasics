//
//  ListBasics.swift
//  DemoSwiftui
//
//  Created by Muvi on 12/07/26.
//

import SwiftUI

struct ListBasics: View {
    @State var fruits : [String] = ["Apple", "Orange", "Banana", "Strawberry"]
    var body: some View {
        NavigationStack{
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits , id: \.self) { fruit in
                        Text(fruit)
                    }
                    
                    //Mark - Delete List element
                    
                    //                .onDelete { indexSet in
                    //                    fruits.remove(atOffsets: indexSet)
                    //                }
                    
                    //                .onDelete(perform: { indexSet in
                    //                    Delete(indexSet: indexSet)
                    //                })
                    
                    .onDelete(perform: Delete(indexSet:))
                    
                    //Mark - Move List element
//                    .onMove { indices, newOffset in
//                        fruits.move(fromOffsets: indices, toOffset: newOffset)
//                    }
                    
//                    .onMove(perform: Move)
                    
                    .onMove { indices, newOffset in
                        Move(indices: indices, newOffset: newOffset)
                    }
                    .listRowBackground(Color.pink)
                }
                
            }
            .navigationTitle(Text("Grocery List"))
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        fruits.append("pineApple")
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
           
        }
    }
    
    func Delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func Move (indices : IndexSet, newOffset : Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
}

#Preview {
    ListBasics()
}
