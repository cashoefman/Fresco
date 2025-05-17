//
//  AnyShape.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI

public struct AnyShape: Shape {
    private let pathProvider: @Sendable (CGRect) -> Path  // ✅ Explicitly mark as @Sendable

    public init<S: Shape>(_ wrapped: S) {
        pathProvider = wrapped.path(in:)
    }

    public func path(in rect: CGRect) -> Path {
        pathProvider(rect)
    }
}
