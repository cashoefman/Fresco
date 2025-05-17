//
//  ThemeManager.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import Foundation

@MainActor
public class ThemeManager {
    public static let shared = ThemeManager()

    public private(set) var loadedThemes: [CustomThemeData] = []
    private var themesByIdentifier: [String: CustomThemeData] = [:]

    public let defaultThemeID = ThemeID(rawValue: "apptheme.m3.baseline")

    private init() {
        do {
            loadedThemes = try CustomThemeLoader.loadThemes(bundle: .module)
        } catch {
            print("❌ [ThemeManager] Error loading themes: \(error.localizedDescription)")
            loadedThemes = [fallbackTheme()]
        }

        loadedThemes.forEach { theme in
            themesByIdentifier[theme.id] = theme
        }

        if themesByIdentifier[defaultThemeID.rawValue] == nil {
            print("⚠️ [ThemeManager] Default theme missing, explicitly loading fallback theme.")
            let fallback = fallbackTheme()
            themesByIdentifier[defaultThemeID.rawValue] = fallback
            loadedThemes.append(fallback)
        }
    }

    public func getTheme(by id: String) -> CustomThemeData? {
        themesByIdentifier[id]
    }

    private func fallbackTheme() -> CustomThemeData {
        CustomThemeData(
            id: "fallback.theme",
            displayName: "Fallback Theme",
            lightColors: ColorHexes(
                primary: "#007AFF",
                onPrimary: "#FFFFFF",
                secondary: "#5856D6",
                onSecondary: "#FFFFFF",
                background: "#FFFFFF",
                surfaceContainerLow: "#F2F2F7",
                onSurface: "#000000",
                inversePrimary: "#FFFFFF",
                error: "#FF3B30",
                tertiary: "#34C759",
                secondaryContainer: "#EFEFF4",
                outlineVariant: "#C7C7CC",
                onSurfaceVariant: "#8E8E93",
                surfaceContainer: "#F9F9F9"
            ),
            darkColors: ColorHexes(
                primary: "#0A84FF",
                onPrimary: "#FFFFFF",
                secondary: "#5E5CE6",
                onSecondary: "#FFFFFF",
                background: "#000000",
                surfaceContainerLow: "#1C1C1E",
                onSurface: "#FFFFFF",
                inversePrimary: "#000000",
                error: "#FF453A",
                tertiary: "#30D158",
                secondaryContainer: "#2C2C2E",
                outlineVariant: "#48484A",
                onSurfaceVariant: "#636366",
                surfaceContainer: "#1C1C1E"
            )
        )
    }
}
