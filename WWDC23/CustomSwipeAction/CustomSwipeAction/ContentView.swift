//
//  ContentView.swift
//  CustomSwipeAction
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
                .navigationTitle("Message")
        }
    }
}

#Preview {
    ContentView()
}
