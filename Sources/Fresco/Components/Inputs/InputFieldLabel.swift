//
//  InputFieldLabel.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct InputFieldLabel: View {
    public var text: String
    public var isRequired: Bool = false
    public var isDisabled: Bool = false
    public var color: Color?

    public init(text: String, isRequired: Bool = false, isDisabled: Bool = false, color: Color? = nil) {
        self.text = text
        self.isRequired = isRequired
        self.isDisabled = isDisabled
        self.color = color
    }

    public var body: some View {
        HStack(alignment: .firstTextBaseline, spacing: 4) {
            Text(text)
                .font(AppFonts.callout)
                .foregroundColor(color ?? (isDisabled ? AppColors.grayLight : AppColors.appBlack))

            if isRequired {
                Text("*")
                    .font(AppFonts.callout)
                    .foregroundColor(AppColors.statusError)
            }
        }
    }
}
