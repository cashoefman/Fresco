//
//  ThemeManager.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI
import Foundation

@MainActor
public class ThemeManager: ObservableObject {
    @Published public private(set) var currentTheme: CustomThemeData
    public private(set) var loadedThemes: [CustomThemeData]
    private var themesByIdentifier: [String: CustomThemeData]
    public let defaultThemeID = ThemeID(rawValue: "apptheme.m3.baseline")

    public init(themeID: ThemeID? = nil) {
        // Explicitly initialize all properties first
        self.loadedThemes = []
        self.themesByIdentifier = [:]
        self.currentTheme = CustomThemeData(
            id: "temporary.placeholder",
            displayName: "Temporary Placeholder",
            lightColors: ColorHexes(primary: "", onPrimary: "", secondary: "", onSecondary: "", background: "", surfaceContainerLow: "", onSurface: "", inversePrimary: "", error: "", tertiary: "", secondaryContainer: "", outlineVariant: "", onSurfaceVariant: "", surfaceContainer: ""),
            darkColors: ColorHexes(primary: "", onPrimary: "", secondary: "", onSecondary: "", background: "", surfaceContainerLow: "", onSurface: "", inversePrimary: "", error: "", tertiary: "", secondaryContainer: "", outlineVariant: "", onSurfaceVariant: "", surfaceContainer: "")
        )

        // Load actual themes after initialization
        do {
            self.loadedThemes = try CustomThemeLoader.loadThemes(bundle: .module)
        } catch {
            print("❌ [ThemeManager] Error loading themes: \(error.localizedDescription)")
            self.loadedThemes = [self.fallbackTheme()]
        }

        self.themesByIdentifier = Dictionary(uniqueKeysWithValues: loadedThemes.map { ($0.id, $0) })

        let selectedThemeID = themeID ?? defaultThemeID
        self.currentTheme = themesByIdentifier[selectedThemeID.rawValue] ?? fallbackTheme()
    }

    public func getTheme(by id: String) -> CustomThemeData? {
        themesByIdentifier[id]
    }

    public func setTheme(by id: String) {
        if let theme = themesByIdentifier[id] {
            currentTheme = theme
        } else {
            print("⚠️ [ThemeManager] Attempted to set non-existent theme ID: \(id)")
        }
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
