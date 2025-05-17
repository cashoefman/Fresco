//
//  ThemeShapesLoader.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import Foundation

public class ThemeShapesLoader {
    
    public static func loadShapes(
        from resourceName: String = "Shapes",
        bundle: Bundle
    ) throws -> [String: ThemeShapes] {

        guard let url = bundle.url(forResource: resourceName, withExtension: "json") else {
            throw ThemeLoadingError.fileNotFound(resourceName)
        }

        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode([String: ThemeShapes].self, from: data)
        } catch {
            throw ThemeLoadingError.decodingError(error)
        }
    }
}

