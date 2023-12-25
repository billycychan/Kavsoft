//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI
import WidgetKit

@main
struct ExpenseTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
