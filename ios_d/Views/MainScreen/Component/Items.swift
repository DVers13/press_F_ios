//
//  File.swift
//  ios_d
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable {
    case home
    case calendar
    case chat
    case profile
    
    var title: String {
        switch self {
        case .home:
            return LocalizedStringKey.tabHomeLabel
        case .calendar:
            return LocalizedStringKey.tabDateLabel
        case .chat:
            return LocalizedStringKey.tabChatLabel
        case .profile:
            return LocalizedStringKey.tabProfileLabel
        }
    }
    
    var iconName: String {
        switch self {
        case .home:
            return ImageAsset.icHome
        case .calendar:
            return ImageAsset.icCalendar
        case .chat:
            return ImageAsset.icMessage
        case .profile:
            return ImageAsset.icContact
        }
    }
}

struct MainView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                MainScreen().tag(0)
                DateScreen().tag(1)
                ChatScreen().tag(2)
                ProfileScreen().tag(3)
            }
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
            
            ZStack {
                HStack {
                    ForEach((TabbedItems.allCases), id: \.self) { item in
                        Button {
                            selectedTab = item.rawValue
                        } label: {
                            createCustomTabView(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }.padding([.bottom, .top], mediumPadding)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            .padding([.leading, .trailing], largePadding)
        }
    }
}

extension MainView {
    func createCustomTabView(imageName: String, title: String, isActive: Bool) -> some View {
        let backgroundColor: Color = isActive ? .activeTabBackground : .clear
        return HStack {
            Spacer()
            Image(imageName)
                .renderingMode(.template)
                .foregroundColor(isActive ? Color.blueAccentBackground : .tabNotAccent)
            if isActive {
                Text(title)
                    .font(.nunitoBold14)
                    .foregroundColor(isActive ? Color.blueAccentBackground : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? activeTabHeight : notActiveTabHeight)
        .frame(maxWidth: .infinity)
        .padding([.bottom, .top], smallPadding)
        .background(backgroundColor)
        .cornerRadius(cornerItemRadius)
    }
}
