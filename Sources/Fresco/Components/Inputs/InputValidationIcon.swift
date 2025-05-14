//
//  InputValidationIcon.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public enum ValidationState {
    case none
    case success
    case error
    case info
}

public struct InputValidationIcon: View {
    public var state: ValidationState

    public init(state: ValidationState) {
        self.state = state
    }

    public var body: some View {
        Group {
            switch state {
            case .none:
                EmptyView()
            case .success:
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(AppColors.statusSuccess)
            case .error:
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(AppColors.statusError)
            case .info:
                Image(systemName: "info.circle.fill")
                    .foregroundColor(AppColors.statusInfo)
            }
        }
        .frame(width: 20, height: 20)
        .accessibilityHidden(state == .none)
    }
}
