//
//  ThemeProtocol.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

public protocol ThemeProtocol {
    var primary: Color { get }
    var onPrimary: Color { get }
    var secondary: Color { get }
    var onSecondary: Color { get }
    var background: Color { get }
    var surfaceContainerLow: Color { get }
    var onSurface: Color { get }
    var inversePrimary: Color { get }
    var error: Color { get }
    var tertiary: Color { get }
    var secondaryContainer: Color { get }
    var outlineVariant: Color { get }
    var onSurfaceVariant: Color { get }
    var surfaceContainer: Color { get }
}
