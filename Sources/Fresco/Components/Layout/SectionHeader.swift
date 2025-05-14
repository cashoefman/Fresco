//
//  SectionHeader.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SectionHeader: View {
    public let title: String

    public init(_ title: String) {
        self.title = title
    }

    public var body: some View {
        Text(title)
            .font(AppFonts.heading2)
            .foregroundColor(AppColors.appBlack)
            .padding(.bottom, AppSpacing.small)
    }
}
