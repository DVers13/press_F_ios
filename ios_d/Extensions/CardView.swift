//
//  CardView.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

extension CardViewModel {
    static let firstCardViewData: CardViewModel = CardViewModel(
        cardBackgroundColor: .darkBlueCard,
        doctorNameColor: .white,
        doctorDegreeColor: .white,
        dividerColor: .blackDivider,
        doctorImageUrl: ImageAsset.icFirstDoctor,
        doctorName: LocalizedStringKey.firstDoctorName,
        doctorDegree: LocalizedStringKey.firstDoctorDegree,
        isMainCard: true
    )
    static let secondCardViewData: CardViewModel = CardViewModel(
        cardBackgroundColor: .white,
        doctorNameColor: .nearBlack,
        doctorDegreeColor: .purple,
        dividerColor: .whiteDivider,
        doctorImageUrl: ImageAsset.icSecondDoctor,
        doctorName: LocalizedStringKey.secondDoctorName,
        doctorDegree: LocalizedStringKey.secondDoctorDegree,
        isMainCard: false
    )
    static let thirdCardViewData: CardViewModel = CardViewModel(
        cardBackgroundColor: .white,
        doctorNameColor: .nearBlack,
        doctorDegreeColor: .purple,
        dividerColor: .whiteDivider,
        doctorImageUrl: ImageAsset.icFirstDoctor,
        doctorName: LocalizedStringKey.firstDoctorName,
        doctorDegree: LocalizedStringKey.firstDoctorDegree,
        isMainCard: false
    )
}

