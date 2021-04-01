//
//  ModelData.swift
//  Budget
//
//  Created by Wei fan on 2021/3/31.
//

import Foundation

final class ModelData: ObservableObject {
    @Published var transactions: [Transaction] = [Transaction(date: Date(),
                                                              amount: 18.88,
                                                              category: "吃饭",
                                                              comment: "肯德基",
                                                              payMethod: "支付宝",
                                                              location: nil)]
    
    func addTransaction(_ newTransaction: Transaction) {
        transactions.append(newTransaction)
    }
    
    func delete(at index: IndexSet) {
        transactions.remove(atOffsets: index)
    }
}
