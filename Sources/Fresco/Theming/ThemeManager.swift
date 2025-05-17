//
//  ThemeManager.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

@MainActor
public class ThemeManager {
    public static let shared = ThemeManager()

    public private(set) var loadedThemes: [CustomThemeData] = []
    private var themesByIdentifier: [String: CustomThemeData] = [:]

    // Ensure this matches exactly the id in your AppThemes.json
    public let defaultThemeID = ThemeID(rawValue: "apptheme.m3.baseline")

    private init() {
        loadedThemes = CustomThemeLoader.loadThemes()
        loadedThemes.forEach { theme in
            themesByIdentifier[theme.id] = theme
        }

        guard themesByIdentifier[defaultThemeID.rawValue] != nil else {
            fatalError("⚠️ Default theme ID '\(defaultThemeID.rawValue)' not found in AppThemes.json.")
        }
    }

    public func getTheme(by id: String) -> CustomThemeData? {
        themesByIdentifier[id]
    }
}
