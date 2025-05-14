//
//  BodyText.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct BodyText: View {
    public var text: String
    public var color: Color = AppColors.appBlack
    public var alignment: TextAlignment = .leading

    public init(_ text: String, color: Color = AppColors.appBlack, alignment: TextAlignment = .leading) {
        self.text = text
        self.color = color
        self.alignment = alignment
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.body)
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
    }
}

