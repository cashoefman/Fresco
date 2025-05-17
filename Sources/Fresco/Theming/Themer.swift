//
//  Themer.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

// Sources/Fresco/Theming/Themer.swift
import SwiftUI

@MainActor
public class Themer: ObservableObject {
    public static let shared = Themer()

    @Published public private(set) var theme: ThemeProtocol
    private var currentColorScheme: ColorScheme = .light

    private init() {
        let defaultThemeData = ThemeManager.shared.getTheme(by: ThemeManager.shared.defaultThemeID.rawValue)!
        self.theme = CustomJSONTheme(data: defaultThemeData, colorScheme: currentColorScheme)
    }

    public func updateColorScheme(_ scheme: ColorScheme) {
        currentColorScheme = scheme
        if let themeData = ThemeManager.shared.getTheme(by: ThemeManager.shared.defaultThemeID.rawValue) {
            theme = CustomJSONTheme(data: themeData, colorScheme: scheme)
        }
    }
}

// CustomJSONTheme implementing ThemeProtocol
public struct CustomJSONTheme: ThemeProtocol {
    private let colors: ColorHexes

    public init(data: CustomThemeData, colorScheme: ColorScheme) {
        self.colors = colorScheme == .dark ? data.darkColors : data.lightColors
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
