//
//  GroceryItem.swift
//  Swift-Data
//
//  Created by Mohamed Shiha on 11/12/2023.
//

import Foundation
import SwiftData

@Model
class GroceryItem {
    let title: String
    let subtitle: String
    let date: Date
    
    init(title: String, subtitle: String, date: Date) {
        self.title = title
        self.subtitle = subtitle
        self.date = date
    }
}
