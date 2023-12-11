//
//  Swift_DataApp.swift
//  Swift-Data
//
//  Created by Mohamed Shiha on 11/12/2023.
//

import SwiftUI
import SwiftData

@main
struct Swift_DataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: GroceryItem.self)
    }
}
