//
//  CustomToggle.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct CustomToggle: View {
    @Binding var isOn: Bool
    public var label: String

    public init(_ label: String, isOn: Binding<Bool>) {
        self.label = label
        self._isOn = isOn
    }

    public var body: some View {
        Toggle(isOn: $isOn) {
            Text(label)
                .font(AppFonts.body)
        }
        .toggleStyle(SwitchToggleStyle(tint: AppColors.brandPrimary))
    }
}
