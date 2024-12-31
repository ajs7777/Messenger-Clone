//
//  SettingsOptionsViewModel.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessibility
    case privacyAndSecurity
    case Notifications
    
    var title: String {
        switch self {
        case .darkMode: return "Dark Mode"
        case .activeStatus: return "Active Status"
        case .accessibility: return "Accessibility"
        case .privacyAndSecurity: return "Privacy and Security"
        case .Notifications: return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessibility: return "accessibility.fill"
        case .privacyAndSecurity: return "lock.circle.fill"
        case .Notifications: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
        case .darkMode: return Color.black
        case .activeStatus: return Color.green
        case .accessibility: return Color.pink
        case .privacyAndSecurity: return Color.blue
        case .Notifications: return Color.purple
        }
    }
    
    var id: Int { return self.rawValue }
}
