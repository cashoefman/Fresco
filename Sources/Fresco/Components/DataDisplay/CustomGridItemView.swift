//
//  CustomGridItemView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct CustomGridItemView: View {
    public var title: String
    public var icon: String

    public init(title: String, icon: String) {
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        VStack(spacing: AppSpacing.small) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(AppColors.brandPrimary)

            Text(title)
                .font(AppFonts.callout)
                .foregroundColor(AppColors.appBlack)
        }
        .padding()
        .background(AppColors.cardBackground)
        .cornerRadius(12)
    }
}
