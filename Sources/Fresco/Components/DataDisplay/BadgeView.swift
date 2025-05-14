//
//  BadgeView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct BadgeView: View {
    public var text: String
    public var color: Color = AppColors.statusInfo

    public init(text: String, color: Color = AppColors.statusInfo) {
        self.text = text
        self.color = color
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.caption)
            .foregroundColor(.white)
            .padding(.horizontal, 8)
            .padding(.vertical, 4)
            .background(color)
            .cornerRadius(12)
    }
}
