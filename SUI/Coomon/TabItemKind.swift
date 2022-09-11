//
//  TabItemKind.swift
//  SUI
//
//  Created by Артем Романов on 11.09.2022.
//

import SwiftUI

enum TabBarItemKind {
    case favorite
    case reports
    case profile
    
    var title: String {
        switch self {
        case .favorite:
            return "Favorite"
        case .reports:
            return "Reports"
        case .profile:
            return "Profile"
        }
    }
    
    var icon: String {
        switch self {
        case .favorite:
            return "icHome32"
        case .reports:
            return "icData32"
        case .profile:
            return "icMore32"
        }
    }
    
}
