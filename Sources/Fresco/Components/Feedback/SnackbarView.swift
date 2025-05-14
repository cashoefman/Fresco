//
//  SnackbarView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct SnackbarView: View {
    public var message: String
    public var actionTitle: String?
    public var onAction: (() -> Void)?

    public init(message: String, actionTitle: String? = nil, onAction: (() -> Void)? = nil) {
        self.message = message
        self.actionTitle = actionTitle
        self.onAction = onAction
    }

    public var body: some View {
        HStack {
            Text(message)
                .font(AppFonts.body)
                .foregroundColor(.white)

            Spacer()

            if let title = actionTitle {
                Button(
                    action: {
                        onAction?()
                    },
                    label: {
                        Text(title)
                            .font(AppFonts.body)
                            .foregroundColor(.white)
                            .bold()
                    }
                )
            }
        }
        .padding()
        .background(AppColors.statusInfo)
        .cornerRadius(8)
        .shadow(radius: 3)
    }
}
