//
//  BudgetApp.swift
//  Budget
//
//  Created by Wei fan on 2021/3/22.
//

import SwiftUI

@main
struct BudgetApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
