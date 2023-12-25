//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Transaction.self])
    }
}
