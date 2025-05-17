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
    @Published public private(set) var currentShapes: ThemeShapes  // ✅ Add this explicitly
    public private(set) var loadedThemes: [CustomThemeData]
    private var themesByIdentifier: [String: CustomThemeData]
    private var loadedShapes: [String: ThemeShapes]               // ✅ Explicitly added

    public let defaultThemeID = ThemeID(rawValue: "apptheme.m3.baseline")

    public init(themeID: ThemeID? = nil) {
        self.loadedThemes = []
        self.themesByIdentifier = [:]
        self.loadedShapes = [:]

        // Temporary placeholders
        self.currentTheme = CustomThemeData(
            id: "temporary.placeholder",
            displayName: "Temporary Placeholder",
            lightColors: ColorHexes(primary: "", onPrimary: "", secondary: "", onSecondary: "", background: "", surfaceContainerLow: "", onSurface: "", inversePrimary: "", error: "", tertiary: "", secondaryContainer: "", outlineVariant: "", onSurfaceVariant: "", surfaceContainer: ""),
            darkColors: ColorHexes(primary: "", onPrimary: "", secondary: "", onSecondary: "", background: "", surfaceContainerLow: "", onSurface: "", inversePrimary: "", error: "", tertiary: "", secondaryContainer: "", outlineVariant: "", onSurfaceVariant: "", surfaceContainer: "")
        )

        self.currentShapes = ThemeShapes(
            profileImage: ProfileImageStyle(shape: "circle", borderWidth: 1, shadowRadius: 2, shadowOpacity: 0.2),
            statusIndicator: StatusIndicatorStyle(shape: "circle", size: 12),
            profileImagePulse: PulseStyle(duration: 1, scale: 1.2, opacity: 0.5)
        )

        // Load actual themes after initialization
        do {
            self.loadedThemes = try CustomThemeLoader.loadThemes(bundle: .module)
            self.loadedShapes = try ThemeShapesLoader.loadShapes(bundle: .module) // ✅ explicitly match loader
        } catch {
            print("❌ [ThemeManager] Error loading themes or shapes: \(error.localizedDescription)")
            self.loadedThemes = [self.fallbackTheme()]
            // Keep shapes fallback if loading fails
        }

        self.themesByIdentifier = Dictionary(uniqueKeysWithValues: loadedThemes.map { ($0.id, $0) })

        let selectedThemeID = themeID ?? defaultThemeID
        self.currentTheme = themesByIdentifier[selectedThemeID.rawValue] ?? fallbackTheme()
        self.currentShapes = loadedShapes[selectedThemeID.rawValue] ?? self.currentShapes // explicitly assign loaded shapes
    }

    public func getTheme(by id: String) -> CustomThemeData? {
        themesByIdentifier[id]
    }

    public func getShapes(by id: String) -> ThemeShapes? {  // ✅ explicitly added
        loadedShapes[id]
    }

    public func setTheme(by id: String) {
        if let theme = themesByIdentifier[id], let shapes = loadedShapes[id] {
            currentTheme = theme
            currentShapes = shapes
        } else {
            print("⚠️ [ThemeManager] Attempted to set non-existent theme ID: \(id)")
        }
    }

    private func fallbackTheme() -> CustomThemeData {
        // your existing fallback implementation
        CustomThemeData(
            id: "fallback.theme",
            displayName: "Fallback Theme",
            lightColors: ColorHexes(
                primary: "#007AFF", onPrimary: "#FFFFFF", secondary: "#5856D6", onSecondary: "#FFFFFF", background: "#FFFFFF", surfaceContainerLow: "#F2F2F7", onSurface: "#000000", inversePrimary: "#FFFFFF", error: "#FF3B30", tertiary: "#34C759", secondaryContainer: "#EFEFF4", outlineVariant: "#C7C7CC", onSurfaceVariant: "#8E8E93", surfaceContainer: "#F9F9F9"
            ),
            darkColors: ColorHexes(
                primary: "#0A84FF", onPrimary: "#FFFFFF", secondary: "#5E5CE6", onSecondary: "#FFFFFF", background: "#000000", surfaceContainerLow: "#1C1C1E", onSurface: "#FFFFFF", inversePrimary: "#000000", error: "#FF453A", tertiary: "#30D158", secondaryContainer: "#2C2C2E", outlineVariant: "#48484A", onSurfaceVariant: "#636366", surfaceContainer: "#1C1C1E"
            )
        )
    }
}

