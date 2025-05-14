//
//  VerticalStack.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct VerticalStack<Content: View>: View {
    public let spacing: CGFloat
    public let alignment: HorizontalAlignment
    public let content: Content

    public init(spacing: CGFloat = AppSpacing.medium, alignment: HorizontalAlignment = .leading, @ViewBuilder content: () -> Content) {
        self.spacing = spacing
        self.alignment = alignment
        self.content = content()
    }

    public var body: some View {
        VStack(alignment: alignment, spacing: spacing) {
            content
        }
    }
}
