//
//  CustomThemeLoader.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import Foundation

public class CustomThemeLoader {
    
    public static func loadThemes(
        from resourceName: String = "AppThemes",
        bundle: Bundle
    ) throws -> [CustomThemeData] {

        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else {
            throw ThemeLoadingError.fileNotFound(resourceName)
        }

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([CustomThemeData].self, from: data)
        } catch {
            throw ThemeLoadingError.decodingError(error)
        }
    }
}

