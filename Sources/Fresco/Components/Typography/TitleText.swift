//
//  TitleText.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct TitleText: View {
    public var text: String
    public var color: Color = AppColors.appBlack
    public var alignment: TextAlignment = .leading

    public init(_ text: String, color: Color = AppColors.appBlack, alignment: TextAlignment = .leading) {
        self.text = text
        self.color = color
        self.alignment = alignment
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.title)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
    }
}

#Preview {
    VStack(alignment: .leading, spacing: AppSpacing.small) {
        TitleText("Welcome to Fresco")
        TitleText("Dark Mode", color: .white)
            .preferredColorScheme(.dark)
    }
    .padding()
    .background(AppColors.appBackground)
}

