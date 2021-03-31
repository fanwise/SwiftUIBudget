//
//  BudgetList.swift
//  Budget
//
//  Created by Wei fan on 2021/3/23.
//

import SwiftUI

struct BudgetList: View {
    let transaction = Transaction(date: Date(),
                                  amount: 18.88,
                                  category: "吃饭",
                                  comment: "肯德基",
                                  payMethod: "支付宝",
                                  location: nil)
    
    var body: some View {
        NavigationView {
            List(0..<5) { item in
                BudgetRow(transaction: transaction)
            }
            .navigationTitle("Budget")
        }
    }
}

struct BudgetList_Previews: PreviewProvider {
    static var previews: some View {
        BudgetList()
    }
}
