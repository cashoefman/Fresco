//
//  CustomListRowView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct CustomListRowView: View {
    public var title: String
    public var subtitle: String?

    public init(title: String, subtitle: String? = nil) {
        self.title = title
        self.subtitle = subtitle
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(AppFonts.body)
                .foregroundColor(AppColors.appBlack)

            if let subtitle = subtitle {
                Text(subtitle)
                    .font(AppFonts.callout)
                    .foregroundColor(AppColors.mutedText)
            }
        }
        .padding(.vertical, 8)
    }
}
