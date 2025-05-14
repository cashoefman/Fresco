//
//  TagInputField.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct TagInputField: View {
    @Binding var tags: [String]
    @Binding var input: String

    public init(tags: Binding<[String]>, input: Binding<String>) {
        self._tags = tags
        self._input = input
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: AppSpacing.small) {
            Text("Tags")
                .font(AppFonts.callout)
                .foregroundColor(AppColors.grayDark)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(tags, id: \.self) { tag in
                        ChipView(label: tag, isDeletable: true) {
                            tags.removeAll { $0 == tag }
                        }
                    }

                    TextField("Add tag", text: $input)
                        .font(AppFonts.body)
                        .textFieldStyle(.plain)
                        .frame(minWidth: 80)
                        .padding(6)
                        .background(AppColors.cardBackground)
                        .cornerRadius(6)
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 6)
                .background(AppColors.chipBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
        }
    }
}

