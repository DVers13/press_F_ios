//
//  File.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

struct CategoryView: View {
    
    @Binding var categoryList: [CategoryModel]
    
    var body: some View {
        HStack {
            ForEach(categoryList, id: \.self) { category in
                Button(action: {}) {
                    VStack {
                        Image(category.imageUrl)
                            .frame(maxWidth: .infinity)
                            .padding(largePadding)
                            .background(Color.blueAccentBackground, in: Circle())
                        Text(LocalizedStringKey(category.categoryName))
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.purple)
                            .font(.poppinsRegular16)
                    }.fixedSize(horizontal: false, vertical: true)
                }.hoverEffect()
            }
        }
    }
}
