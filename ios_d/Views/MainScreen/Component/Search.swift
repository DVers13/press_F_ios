//
//  Search.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Label {
                Text("Search doctor or health issue")
                    .font(.poppinsRegular16)
                    .foregroundColor(.purple)
                    .padding(.leading, smallPadding)
            } icon: {
                Image(ImageAsset.icMagnifier)
            }.hoverEffect(.highlight)
            Spacer()
        }
        .padding(mediumPadding)
        .background(Color.blueAccentBackground)
        .clipShape(RoundedRectangle(cornerRadius: cornerItemRadius))
    }
}
