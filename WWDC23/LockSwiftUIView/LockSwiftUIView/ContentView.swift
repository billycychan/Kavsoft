//
//  ContentView.swift
//  LockSwiftUIView
//
//  Created by CHI YU CHAN on 23/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LockView(lockType: .number, lockPin: "0320", isEnabled: true) {
            VStack(spacing: 15) {
                Image(systemName: "globe")
                    .imageScale(.large)
            }
        }
    }
}

#Preview {
    ContentView()
}
