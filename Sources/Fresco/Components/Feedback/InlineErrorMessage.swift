//
//  InlineErrorMessage.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//


import SwiftUI

public struct InlineErrorMessage: View {
    public var message: String

    public init(_ message: String) {
        self.message = message
    }

    public var body: some View {
        Text(message)
            .font(AppFonts.callout)
            .foregroundColor(AppColors.statusError)
            .padding(.top, 4)
            .accessibilityLabel("Error: \(message)")
    }
}

