//
//  Card.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

struct CardView: View {
    
    @Binding var cardViewData: CardViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: itemSpacing) {
            HStack {
                Image(cardViewData.doctorImageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: circleImageSize, height: circleImageSize, alignment: .top)
                    .background(.white)
                    .clipShape(Circle())
                    .padding(.trailing, smallPadding)
                
                VStack(alignment: .leading) {
                    Text(cardViewData.doctorName, comment: "Text")
                        .foregroundColor(cardViewData.doctorNameColor)
                        .font(.poppinsBold16)
                    
                    Text(cardViewData.doctorDegree, comment: "Text")
                        .foregroundColor(cardViewData.doctorDegreeColor)
                        .font(.poppinsRegular14)
                }
                
                Spacer()
                
                if cardViewData.isMainCard {
                    Image(ImageAsset.icArrow)
                } else {
                    Label {
                        Text("1.2 KM")
                            .font(.poppinsRegular14)
                            .foregroundColor(.purple)
                    } icon: {
                        Image(ImageAsset.icLocation)
                    }
                }
            }
            
            Divider().overlay(cardViewData.dividerColor).padding([.top, .bottom], superSmallPadding)
            
            if cardViewData.isMainCard {
                HStack {
                    Label {
                        Text("Sunday, 12 June")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image(ImageAsset.icDateCalendar)
                    }
                    Label {
                        Text("11:00 - 12:00 AM")
                            .font(.poppinsRegular12)
                            .foregroundColor(.white)
                    } icon: {
                        Image(ImageAsset.icClock)
                    }
                    .padding(.leading, largePadding)
                }
            } else {
                HStack {
                    Label {
                        Text("4,8 (120 Reviews)")
                            .font(.poppinsRegular12)
                            .foregroundColor(.reviewTint)
                    } icon: {
                        Image(ImageAsset.icClock)
                            .renderingMode(.template)
                            .foregroundColor(.reviewTint)
                    }
                    Label {
                        Text(LocalizedStringKey.openTimeLabel, comment: "Text")
                            .font(.poppinsRegular12)
                            .foregroundColor(.timeTint)
                    } icon: {
                        Image(ImageAsset.icClock)
                            .renderingMode(.template)
                            .foregroundColor(.timeTint)
                    }
                    .padding(.leading, largePadding)
                }
            }
        }
        .padding(mediumPadding)
        .background(cardViewData.cardBackgroundColor, in: RoundedRectangle(cornerRadius: cornerItemRadius))
    }
}
