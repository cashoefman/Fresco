//
//  ErrorText.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ErrorText: View {
    public var text: String
    public var alignment: TextAlignment = .leading

    public init(_ text: String, alignment: TextAlignment = .leading) {
        self.text = text
        self.alignment = alignment
    }

    public var body: some View {
        Text(text)
            .font(AppFonts.callout)
            .foregroundColor(AppColors.statusError)
            .multilineTextAlignment(alignment)
    }
}
