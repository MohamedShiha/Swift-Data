//
//  ContentView.swift
//  Swift-Data
//
//  Created by Mohamed Shiha on 11/12/2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @State private var newGroceryItem: String = ""
    @Query private var groceryItems: Array<GroceryItem>
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Add Item", text: $newGroceryItem)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Save") {
                    guard !newGroceryItem.isEmpty else { return }
                    let groceryItem = GroceryItem(title: newGroceryItem, subtitle: "Get it asap!", date: .now)
                    context.insert(groceryItem)
                    newGroceryItem = ""
                }
                List {
                    ForEach(groceryItems) { item in
                        Text(item.title)
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            context.delete(groceryItems[index])
                        }
                    }
                }
                .overlay {
                    if groceryItems.isEmpty {
                        Text("No Items")
                    }
                }
            }
            .navigationTitle("GroceryItems")
        }
    }
}

#Preview {
    ContentView()
}
