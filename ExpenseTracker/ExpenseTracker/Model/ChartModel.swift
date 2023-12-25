//
//  ChartModel.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 25/12/2023.
//

import Foundation

struct ChartGroup: Identifiable {
    let id: UUID = .init()
    var date = Date()
    var categories: [ChartCategory]
    var totalIncome: Double
    var totalExpenses: Double
}


struct ChartCategory: Identifiable {
    let id: UUID = .init()
    var totalValue: Double
    var category: Category
}
