//
//  IconButton.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct IconButton: View {
    public var systemName: String
    public var action: () -> Void
    public var size: CGFloat = 44
    public var background: Color = AppColors.grayLight
    public var foreground: Color = AppColors.appBlack

    public init(systemName: String, size: CGFloat = 44, background: Color = AppColors.grayLight, foreground: Color = AppColors.appBlack, action: @escaping () -> Void) {
        self.systemName = systemName
        self.size = size
        self.background = background
        self.foreground = foreground
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Image(systemName: systemName)
                .resizable()
                .scaledToFit()
                .frame(width: size * 0.5, height: size * 0.5)
                .foregroundColor(foreground)
                .frame(width: size, height: size)
                .background(background)
                .clipShape(Circle())
        }
    }
}

#Preview {
    HStack(spacing: AppSpacing.medium) {
        IconButton(systemName: "heart.fill") { }
        IconButton(systemName: "gearshape.fill", background: AppColors.brandPrimary, foreground: .white) { }
    }
    .padding()
}
