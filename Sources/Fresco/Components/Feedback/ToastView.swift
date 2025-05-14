//
//  ToastView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ToastView: View {
    public var message: String
    public var background: Color = AppColors.statusInfo
    public var textColor: Color = .white

    public init(message: String, background: Color = AppColors.statusInfo, textColor: Color = .white) {
        self.message = message
        self.background = background
        self.textColor = textColor
    }

    public var body: some View {
        Text(message)
            .font(AppFonts.body)
            .foregroundColor(textColor)
            .padding(.horizontal, AppSpacing.medium)
            .padding(.vertical, AppSpacing.small)
            .background(background)
            .cornerRadius(10)
            .shadow(radius: 4)
    }
}

