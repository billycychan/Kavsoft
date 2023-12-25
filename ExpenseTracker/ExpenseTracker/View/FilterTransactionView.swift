//
//  FilterTransactionView.swift
//  ExpenseTracker
//
//  Created by CHI YU CHAN on 25/12/2023.
//

import SwiftUI
import SwiftData

/// Custom View
struct FilterTransactionView<Content: View>: View {
    var content: ([Transaction]) -> Content
    
    @Query(animation: .snappy) private var transactions: [Transaction]
    
    init(category: Category?, searchText: String, @ViewBuilder content: @escaping ([Transaction]) -> Content ) {
        /// Custom Predicate
        
        let rawValue = category?.rawValue ?? ""
        
        let predicate = #Predicate<Transaction> { transaction in
            return (transaction.title.localizedStandardContains(searchText) ||
                    transaction.remarks.localizedStandardContains(searchText)) &&
            (rawValue.isEmpty ? true : transaction.category == rawValue)
        }
        
        _transactions = Query(filter: predicate,
                              sort: [SortDescriptor(\Transaction.dataAdded, order: .reverse)],
                              animation: .snappy)
        self.content = content
    }
    
    var body: some View {
        content(transactions)
    }
}
