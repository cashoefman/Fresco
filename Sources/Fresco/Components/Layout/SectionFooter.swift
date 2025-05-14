//
//  SectionFooter.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SectionFooter: View {
    public let text: String

    public init(_ text: String) {
        self.text = text
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.callout)
            .foregroundColor(AppColors.mutedText)
            .padding(.top, AppSpacing.small)
    }
}
