//
//  EmptyStateIllustrationView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct EmptyStateIllustrationView: View {
    public var image: Image
    public var title: String
    public var message: String

    public init(image: Image, title: String, message: String) {
        self.image = image
        self.title = title
        self.message = message
    }

    public var body: some View {
        VStack(spacing: AppSpacing.medium) {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .foregroundColor(AppColors.grayLight)

            TitleText(title)
            BodyText(message)
                .multilineTextAlignment(.center)
                .foregroundColor(AppColors.mutedText)
        }
        .padding()
    }
}
