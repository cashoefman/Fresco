//
//  ChipView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct ChipView: View {
    public var label: String
    public var isSelected: Bool
    public var isDeletable: Bool
    public var onTap: (() -> Void)?
    public var onDelete: (() -> Void)?

    public init(
        label: String,
        isSelected: Bool = false,
        isDeletable: Bool = false,
        onTap: (() -> Void)? = nil,
        onDelete: (() -> Void)? = nil
    ) {
        self.label = label
        self.isSelected = isSelected
        self.isDeletable = isDeletable
        self.onTap = onTap
        self.onDelete = onDelete
    }

    public var body: some View {
        HStack(spacing: 4) {
            Text(label)
                .font(AppFonts.callout)
                .foregroundColor(isSelected ? .white : AppColors.appBlack)
                .padding(.vertical, 6)
                .padding(.horizontal, 10)

            if isDeletable {
                Button(
                    action: {
                        onDelete?()
                    },
                    label: {
                        Image(systemName: "xmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 14, height: 14)
                            .foregroundColor(isSelected ? .white : AppColors.grayDark)
                            .padding(.trailing, 8)
                    }
                )
                .buttonStyle(.plain)
            }
        }
        .background(isSelected ? AppColors.brandPrimary : AppColors.chipBackground)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(AppColors.chipBorder, lineWidth: 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .onTapGesture {
            onTap?()
        }
    }
}
