//
//  ThemeLoadingError.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import Foundation

public enum ThemeLoadingError: Error, LocalizedError {
    case fileNotFound(String)
    case decodingError(Error)
    case unknown

    public var errorDescription: String? {
        switch self {
        case .fileNotFound(let fileName):
            return "Theme JSON file not found: \(fileName).json"
        case .decodingError(let error):
            return "Error decoding theme JSON: \(error.localizedDescription)"
        case .unknown:
            return "Unknown error occurred while loading themes."
        }
    }
}
