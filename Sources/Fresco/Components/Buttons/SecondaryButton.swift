//
//  SecondaryButton.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SecondaryButton: View {
    public var title: String
    public var action: () -> Void
    public var isEnabled: Bool = true
    public var fullWidth: Bool = true

    public init(title: String, isEnabled: Bool = true, fullWidth: Bool = true, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        self.isEnabled = isEnabled
        self.fullWidth = fullWidth
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.body)
                .foregroundColor(isEnabled ? AppColors.brandPrimary : AppColors.grayLight)
                .padding(.vertical, AppSpacing.small)
                .padding(.horizontal, AppSpacing.medium)
                .frame(maxWidth: fullWidth ? .infinity : nil)
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(isEnabled ? AppColors.brandPrimary : AppColors.grayLight, lineWidth: 1)
                )
        }
        .disabled(!isEnabled)
    }
}

#Preview {
    VStack(spacing: AppSpacing.medium) {
        SecondaryButton(title: "Secondary") { }
        SecondaryButton(title: "Disabled", isEnabled: false) { }
    }
    .padding()
}
