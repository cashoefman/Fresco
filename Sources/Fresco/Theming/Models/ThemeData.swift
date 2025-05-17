//
//  ThemeData.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

public struct ColorHexes: Codable {
    public let primary: String
    public let onPrimary: String
    public let secondary: String
    public let onSecondary: String
    public let background: String
    public let surfaceContainerLow: String
    public let onSurface: String
    public let inversePrimary: String
    public let error: String
    public let tertiary: String
    public let secondaryContainer: String
    public let outlineVariant: String
    public let onSurfaceVariant: String
    public let surfaceContainer: String
}

public struct CustomThemeData: Codable, Identifiable {
    public let id: String
    public let displayName: String
    public let lightColors: ColorHexes
    public let darkColors: ColorHexes
}

public struct CustomJSONTheme: ThemeProtocol {
    public let colorScheme: ColorScheme
    private let colors: ColorHexes

    public init(data: CustomThemeData, colorScheme: ColorScheme) {
        self.colors = (colorScheme == .dark) ? data.darkColors : data.lightColors
        self.colorScheme = colorScheme
    }

    public var primary: Color { Color(hex: colors.primary) }
    public var onPrimary: Color { Color(hex: colors.onPrimary) }
    public var secondary: Color { Color(hex: colors.secondary) }
    public var onSecondary: Color { Color(hex: colors.onSecondary) }
    public var background: Color { Color(hex: colors.background) }
    public var surfaceContainerLow: Color { Color(hex: colors.surfaceContainerLow) }
    public var onSurface: Color { Color(hex: colors.onSurface) }
    public var inversePrimary: Color { Color(hex: colors.inversePrimary) }
    public var error: Color { Color(hex: colors.error) }
    public var tertiary: Color { Color(hex: colors.tertiary) }
    public var secondaryContainer: Color { Color(hex: colors.secondaryContainer) }
    public var outlineVariant: Color { Color(hex: colors.outlineVariant) }
    public var onSurfaceVariant: Color { Color(hex: colors.onSurfaceVariant) }
    public var surfaceContainer: Color { Color(hex: colors.surfaceContainer) }
}
