//
//  Search.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 22/12/2023.
//

import SwiftUI
import Combine


struct Search: View {
    @State private var searchText: String = ""
    @State private var filterText: String = ""

    let searchPublisher = PassthroughSubject<String, Never>()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    
                }
            }
            .searchable(text: $searchText)
            .overlay {
                ContentUnavailableView("Search Transaction", systemImage: "magnifyingglass")
                    .opacity(searchText.isEmpty ? 1 : 0)
            }
            .onChange(of: searchText) { oldValue, newValue in
                if newValue.isEmpty {
                    filterText = ""
                }
                searchPublisher.send(newValue)
            }
            .onReceive(searchPublisher.debounce(for: .seconds(0.3), scheduler: DispatchQueue.main), perform: { _ in
                filterText = searchText
            })
            .navigationTitle("Search")
        }
    }
}

#Preview {
    Search()
}
