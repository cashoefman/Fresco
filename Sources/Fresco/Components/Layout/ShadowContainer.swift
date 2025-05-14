//
//  ShadowContainer.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ShadowContainer<Content: View>: View {
    public let content: Content
    public let cornerRadius: CGFloat
    public let shadowRadius: CGFloat
    public let backgroundColor: Color

    public init(
        cornerRadius: CGFloat = 12,
        shadowRadius: CGFloat = 4,
        backgroundColor: Color = AppColors.cardBackground,
        @ViewBuilder content: () -> Content
    ) {
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadowRadius
        self.backgroundColor = backgroundColor
        self.content = content()
    }

    public var body: some View {
        content
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .shadow(radius: shadowRadius)
    }
}
