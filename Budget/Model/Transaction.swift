//
//  Transaction.swift
//  Budget
//
//  Created by Wei fan on 2021/3/23.
//

import Foundation
import CoreLocation

struct Transaction: Identifiable {
    var id = UUID()
    var date: Date
    var amount: Double
    var category: String
    var comment: String?
    var payMethod: String
    var location: CLLocationCoordinate2D?
}
