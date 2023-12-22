//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    
    var title: String
    var remarks: String
    var amoint: Double
    var dataAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amoint: Double, dataAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amoint = amoint
        self.dataAdded = dataAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    /// Extracting Color Value from tintColor String
    var color: Color {
        return tints.first(where: {$0.color == tintColor})?.value ?? appTint
    }
}
