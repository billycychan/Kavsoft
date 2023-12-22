//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI

struct ContentView: View {
    /// Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    @State private var activeTab: Tab = .recents
    
    var body: some View {
        TabView(selection: $activeTab) {
            Text(Tab.recents.rawValue)
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            Text(Tab.recents.rawValue)
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            Text(Tab.charts.rawValue)
                .tag(Tab.recents)
            
                .tabItem { Tab.recents.tabContent }
            Text(Tab.settings.rawValue)
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime) {
            IntroScreen()
                .interactiveDismissDisabled()
        }
    }
}

#Preview {
    ContentView()
}
