//
//  ErrorView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ErrorView: View {
    public var title: String
    public var message: String

    public init(title: String = "Something went wrong", message: String = "Please try again later.") {
        self.title = title
        self.message = message
    }

    public var body: some View {
        VStack(spacing: AppSpacing.small) {
            TitleText(title)
            BodyText(message)
                .multilineTextAlignment(.center)
                .foregroundColor(AppColors.statusError)
        }
        .padding()
    }
}
