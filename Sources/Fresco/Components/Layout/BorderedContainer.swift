//
//  BorderedContainer.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct BorderedContainer<Content: View>: View {
    public let content: Content
    public let cornerRadius: CGFloat
    public let borderColor: Color
    public let backgroundColor: Color

    public init(
        cornerRadius: CGFloat = 12,
        borderColor: Color = AppColors.chipBorder,
        backgroundColor: Color = AppColors.cardBackground,
        @ViewBuilder content: () -> Content
    ) {
        self.cornerRadius = cornerRadius
        self.borderColor = borderColor
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    public var body: some View {
        content
            .padding()
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(borderColor, lineWidth: 1)
            )
            .cornerRadius(cornerRadius)
    }
}
