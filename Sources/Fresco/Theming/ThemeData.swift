//
//  ThemeData.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

// ColorHexes struct to decode colors from JSON
public struct ColorHexes: Codable {
    let primary: String
    let onPrimary: String
    let secondary: String
    let onSecondary: String
    let background: String
    let surfaceContainerLow: String
    let onSurface: String
    let inversePrimary: String
    let error: String
    let tertiary: String
    let secondaryContainer: String
    let outlineVariant: String
    let onSurfaceVariant: String
    let surfaceContainer: String
}

// CustomThemeData for theme information
public struct CustomThemeData: Codable, Identifiable {
    public let id: String
    public let displayName: String
    let lightColors: ColorHexes
    let darkColors: ColorHexes
}

// CustomThemeLoader to load themes from JSON resource
class CustomThemeLoader {
    static func loadThemes(from resourceName: String = "AppThemes", bundle: Bundle = .module) -> [CustomThemeData] {
        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else {
            print("❌ Error: \(resourceName).json NOT FOUND.")
            return []
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([CustomThemeData].self, from: data)
        } catch {
            print("❌ Error loading themes: \(error)")
            return []
        }
    }
}
