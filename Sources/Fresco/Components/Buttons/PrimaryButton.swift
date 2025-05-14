//
//  PrimaryButton.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct PrimaryButton: View {
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
                .foregroundColor(.white)
                .padding(.vertical, AppSpacing.small)
                .padding(.horizontal, AppSpacing.medium)
                .frame(maxWidth: fullWidth ? .infinity : nil)
                .background(isEnabled ? AppColors.brandPrimary : AppColors.grayLight)
                .cornerRadius(8)
                .opacity(isEnabled ? 1 : 0.6)
        }
        .disabled(!isEnabled)
    }
}

