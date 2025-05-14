//
//  SecureEntryTextField.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SecureEntryTextField: View {
    @Binding var text: String
    public var placeholder: String
    public var isDisabled: Bool = false

    public init(
        placeholder: String,
        text: Binding<String>,
        isDisabled: Bool = false
    ) {
        self._text = text
        self.placeholder = placeholder
        self.isDisabled = isDisabled
    }

    public var body: some View {
        SecureField(placeholder, text: $text)
            .disabled(isDisabled)
            .padding(.vertical, AppSpacing.small)
            .padding(.horizontal, AppSpacing.medium)
            .font(AppFonts.body)
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .strokeBorder(AppColors.grayLight, lineWidth: 1)
                    .background(RoundedRectangle(cornerRadius: 8).fill(AppColors.cardBackground))
            )
            .foregroundColor(isDisabled ? AppColors.grayLight : AppColors.appBlack)
            .opacity(isDisabled ? 0.6 : 1.0)
    }
}

