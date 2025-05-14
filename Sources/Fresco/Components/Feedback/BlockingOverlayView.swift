//
//  BlockingOverlayView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct BlockingOverlayView: View {
    public var message: String

    public init(message: String = "Loading...") {
        self.message = message
    }

    public var body: some View {
        ZStack {
            Color.black.opacity(0.4).ignoresSafeArea()
            VStack(spacing: AppSpacing.small) {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                Text(message)
                    .foregroundColor(.white)
                    .font(AppFonts.body)
            }
            .padding()
            .background(Color.black.opacity(0.8))
            .cornerRadius(10)
        }
    }
}

