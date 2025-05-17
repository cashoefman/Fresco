//
//  ThemeID.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

public struct ThemeID: Hashable, Equatable, RawRepresentable, Sendable {
    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    public static let frescoDefault = ThemeID(rawValue: "apptheme.m3.baseline")
}

