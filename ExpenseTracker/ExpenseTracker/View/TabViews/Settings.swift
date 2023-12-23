//
//  Settings.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI

struct Settings: View {
    @AppStorage("userName") private var userName: String = ""
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false

    var body: some View {
        NavigationStack {
            List {
                Section("User Name") {
                    TextField("iJustine", text: $userName)
                }
                
                Section("App Lock") {
                    Toggle("Enable App Lock", isOn: $isAppLockEnabled)
                }
                
                if isAppLockEnabled {
                    Toggle("Lock When App Goes Background", isOn: $lockWhenAppGoesBackground)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    ContentView()
}
