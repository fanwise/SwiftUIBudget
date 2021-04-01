//
//  AddBudget.swift
//  Budget
//
//  Created by Wei fan on 2021/3/31.
//

import SwiftUI

struct AddBudget: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var editing: Bool
    @State private var date = Date()
    @State private var amountText = ""
    @State private var category = ""
    @State private var comment = ""
    @State private var payMethod = ""
    
    func addTransction() {
        let amount = Double(amountText) ?? 0.0
        let transaction = Transaction(date: date,
                                      amount: amount,
                                      category: category,
                                      comment: comment,
                                      payMethod: payMethod,
                                      location: nil)
        modelData.addTransaction(transaction)
    }
    
    var body: some View {
        
        VStack {
            List {
                HStack {
                    Text("金额").bold()
                    Divider()
                    TextField("金额", text: $amountText)
                }
                HStack {
                    Text("种类").bold()
                    Divider()
                    TextField("种类", text: $category)
                }
                HStack {
                    Text("备注").bold()
                    Divider()
                    TextField("备注", text: $comment)
                }
                HStack {
                    Text("支付方式").bold()
                    Divider()
                    TextField("方式", text: $payMethod)
                }
                DatePicker(
                    "Date",
                    selection: $date,
                    displayedComponents: [.date, .hourAndMinute]
                )
                .datePickerStyle(WheelDatePickerStyle())
            }
            HStack {
                Spacer()
                Button("add") {
                    self.addTransction()
                    self.editing = false
                }
                Spacer()
                Button("dismiss") {
                    self.editing = false
                }
                Spacer()
            }
        }
        
    }
}

struct AddBudget_Previews: PreviewProvider {
    static var previews: some View {
        AddBudget(editing: .constant(true))
            .environmentObject(ModelData())
    }
}
