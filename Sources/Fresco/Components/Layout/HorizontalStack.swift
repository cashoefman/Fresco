//
//  HorizontalStack.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct HorizontalStack<Content: View>: View {
    public let spacing: CGFloat
    public let alignment: VerticalAlignment
    public let content: Content

    public init(spacing: CGFloat = AppSpacing.medium, alignment: VerticalAlignment = .center, @ViewBuilder content: () -> Content) {
        self.spacing = spacing
        self.alignment = alignment
        self.content = content()
    }

    public var body: some View {
        HStack(alignment: alignment, spacing: spacing) {
            content
        }
    }
}
