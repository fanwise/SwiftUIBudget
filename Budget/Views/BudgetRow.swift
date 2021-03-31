//
//  BudgetRow.swift
//  Budget
//
//  Created by Wei fan on 2021/3/22.
//

import SwiftUI

struct BudgetRow: View {
    var transaction: Transaction
    
    func formatDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.string(from: date)
    }
    
    var body: some View {
        HStack {
            Image("meal")
                .resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 20)
            VStack(alignment: .leading) {
                Text(transaction.category)
                    .font(.headline)
                Text("\(transaction.comment ?? "") - \(formatDate(date: transaction.date))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text("-￥\(String(format: "%.2f", transaction.amount))")
                .foregroundColor(.green)
        }
    }
}

struct BudgetRow_Previews: PreviewProvider {
    static let transaction = Transaction(date: Date(),
                                         amount: 18.88,
                                         category: "吃饭",
                                         comment: "肯德基",
                                         payMethod: "支付宝",
                                         location: nil)
    
    static var previews: some View {
        BudgetRow(transaction: transaction)
    }
}
