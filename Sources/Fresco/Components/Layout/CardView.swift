//
//  CardView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct CardView<Content: View>: View {
    public let content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.medium) {
            content
        }
        .padding()
        .background(AppColors.cardBackground)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
