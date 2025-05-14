//
//  TextButton.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct TextButton: View {
    public var title: String
    public var action: () -> Void
    public var isEnabled: Bool = true

    public init(title: String, isEnabled: Bool = true, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        self.isEnabled = isEnabled
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(AppFonts.body)
                .foregroundColor(isEnabled ? AppColors.brandPrimary : AppColors.grayLight)
                .padding(.vertical, AppSpacing.small)
                .padding(.horizontal, AppSpacing.medium)
        }
        .disabled(!isEnabled)
    }
}

#Preview {
    VStack(spacing: AppSpacing.medium) {
        TextButton(title: "Text Button") { }
        TextButton(title: "Disabled", isEnabled: false) { }
    }
    .padding()
}
