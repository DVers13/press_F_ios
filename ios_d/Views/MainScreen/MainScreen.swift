//
//  MainScreen.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

struct MainScreen: View {
        
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HeaderView(userData: .constant(User.userData))
                Button(action: {}) {
                    SearchView()
                        .padding(.top, mediumPadding)
                }.hoverEffect()
                CategoryView(categoryList: .constant(CategoryModel.categoryList))
                    .padding(.top, mediumPadding)
                Text("Near Doctor")
                    .foregroundColor(.nearBlack)
                    .font(.poppinsSemiBold16)
                    .padding(.top, largePadding)
                Spacer(minLength: fromBottomPadding)
            }
        }
        .padding([.leading, .trailing], largePadding)
        .padding(.top, mediumPadding)
    }
}
