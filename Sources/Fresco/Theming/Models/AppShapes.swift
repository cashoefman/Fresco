//
//  AppShapes.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import Foundation

public struct ThemeShapes: Codable {
    public let profileImage: ProfileImageStyle
    public let statusIndicator: StatusIndicatorStyle
    public let profileImagePulse: PulseStyle
}

public struct ProfileImageStyle: Codable {
    public let shape: String
    public let borderWidth: Double
    public let shadowRadius: Double
    public let shadowOpacity: Double
}

public struct StatusIndicatorStyle: Codable {
    public let shape: String
    public let size: Double
}

public struct PulseStyle: Codable {
    public let duration: Double
    public let scale: Double
    public let opacity: Double
}
