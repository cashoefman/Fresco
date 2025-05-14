//
//  ModalCardView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ModalCardView<Content: View>: View {
    public let title: String
    public let content: Content
    public let onClose: (() -> Void)?

    public init(title: String, onClose: (() -> Void)? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
        self.onClose = onClose
    }

    public var body: some View {
        VStack(spacing: AppSpacing.medium) {
            HStack {
                Text(title)
                    .font(AppFonts.heading2)
                Spacer()
                if let close = onClose {
                    Button(action: close) {
                        Image(systemName: "xmark")
                            .foregroundColor(AppColors.appBlack)
                    }
                }
            }

            content
        }
        .padding()
        .background(AppColors.cardBackground)
        .cornerRadius(16)
        .shadow(radius: 6)
        .padding()
    }
}

