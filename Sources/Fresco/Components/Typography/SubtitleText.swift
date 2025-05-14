//
//  SubtitleText.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SubtitleText: View {
    public var text: String
    public var color: Color = AppColors.grayDark
    public var alignment: TextAlignment = .leading

    public init(_ text: String, color: Color = AppColors.grayDark, alignment: TextAlignment = .leading) {
        self.text = text
        self.color = color
        self.alignment = alignment
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.heading2)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    VStack(alignment: .leading, spacing: AppSpacing.small) {
        SubtitleText("Let’s build something beautiful.")
        SubtitleText("White on dark", color: .white)
            .preferredColorScheme(.dark)
    }
    .padding()
    .background(AppColors.appBackground)
}

