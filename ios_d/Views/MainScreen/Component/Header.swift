//
//  Header.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var userData: User

    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello,")
                        .foregroundColor(.purple)
                        .font(.poppinsRegular16)
                    HStack {
                        Text("Hi")
                            .foregroundColor(Color.darkBlack)
                            .font(.poppinsBold20)
                        Text(userData.userName)
                            .foregroundColor(Color.darkBlack)
                            .font(.poppinsBold20)
                    }
                }
                Spacer()
                Button(action: {}) {
                    Image(userData.userImageUrl)
                }
            }
        }
    }
}
