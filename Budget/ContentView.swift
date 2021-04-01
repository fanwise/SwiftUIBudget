//
//  ContentView.swift
//  Budget
//
//  Created by Wei fan on 2021/3/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var editingBudget = false
    
    var body: some View {
        ZStack {
            BudgetList()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.editingBudget = true
                    }, label: {
                        Text("+")
                            .font(.system(.largeTitle))
                            .frame(width: 66, height: 60)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 6)
                            .background(Color.blue)
                            .cornerRadius(33)
                    })
                    .padding()
                    .shadow(color: Color.black.opacity(0.3),
                            radius: 3, x: 3, y: 3)
                    .sheet(isPresented: $editingBudget) {
                        AddBudget(editing: $editingBudget)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
