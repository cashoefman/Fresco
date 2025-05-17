//
//  Themer.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI
import Foundation

@MainActor
public class Themer: ObservableObject {
    @Published public private(set) var theme: ThemeProtocol
    @Published public private(set) var themeShapes: ThemeShapes

    private var currentColorScheme: ColorScheme = .light
    private let themeManager: ThemeManager

    public var availableThemes: [CustomThemeData] {
        themeManager.loadedThemes
    }

    public init(themeManager: ThemeManager = ThemeManager()) {
        self.themeManager = themeManager

        let defaultThemeData = themeManager.getTheme(by: themeManager.defaultThemeID.rawValue)
            ?? themeManager.loadedThemes.first!
        
        self.theme = CustomJSONTheme(data: defaultThemeData, colorScheme: currentColorScheme)

        // ✅ explicitly use themeManager's already loaded shapes
        self.themeShapes = themeManager.currentShapes
    }

    public func updateColorScheme(_ scheme: ColorScheme) {
        currentColorScheme = scheme
        if let themeData = themeManager.getTheme(by: themeManager.defaultThemeID.rawValue) {
            theme = CustomJSONTheme(data: themeData, colorScheme: scheme)
        }
    }

    public func setTheme(_ themeData: CustomThemeData) {
        theme = CustomJSONTheme(data: themeData, colorScheme: currentColorScheme)
        // ✅ explicitly update shapes whenever theme is set
        if let shapes = themeManager.getShapes(by: themeData.id) {
            themeShapes = shapes
        }
    }
}




