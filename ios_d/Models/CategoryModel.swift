//
//  CategoryModel.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import Foundation
import SwiftUI

enum Category {
    static let covid = LocalizedStringKey.covidLabel
    static let doctor = LocalizedStringKey.doctorLabel
    static let medicine = LocalizedStringKey.medicineLabel
    static let hospital = LocalizedStringKey.hospitalLabel
}

struct CategoryModel: Hashable {
    var imageUrl: String
    let categoryName: String
}
