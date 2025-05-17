//
//  Themer.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

@MainActor
public class Themer: ObservableObject {
    public static let shared = Themer()

    @Published public private(set) var theme: ThemeProtocol
    private var currentColorScheme: ColorScheme = .light

    private init() {
        let defaultThemeData = ThemeManager.shared.getTheme(by: ThemeManager.shared.defaultThemeID.rawValue)
            ?? ThemeManager.shared.loadedThemes.first!
        
        self.theme = CustomJSONTheme(data: defaultThemeData, colorScheme: currentColorScheme)
    }

    public func updateColorScheme(_ scheme: ColorScheme) {
        currentColorScheme = scheme
        if let themeData = ThemeManager.shared.getTheme(by: ThemeManager.shared.defaultThemeID.rawValue) {
            theme = CustomJSONTheme(data: themeData, colorScheme: scheme)
        }
    }

    public func setTheme(_ themeData: CustomThemeData) {
        theme = CustomJSONTheme(data: themeData, colorScheme: currentColorScheme)
    }
}

