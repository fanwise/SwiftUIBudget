//
//  BudgetList.swift
//  Budget
//
//  Created by Wei fan on 2021/3/23.
//

import SwiftUI

struct BudgetList: View {
    @EnvironmentObject var modelData: ModelData
    
    func delete(at index: IndexSet) {
        modelData.delete(at: index)
    }
    
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    ForEach(modelData.transactions) { item in
                        BudgetRow(transaction: item)
                    }
                    .onDelete(perform: delete)
                }
                .navigationTitle("Budget")
            }
        }
    }
}

struct BudgetList_Previews: PreviewProvider {
    static var previews: some View {
        BudgetList()
            .environmentObject(ModelData())
    }
}
