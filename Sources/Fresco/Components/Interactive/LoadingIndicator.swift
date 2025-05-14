//
//  LoadingIndicator.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct LoadingIndicator: View {
    public var size: CGFloat = 24

    public init(size: CGFloat = 24) {
        self.size = size
    }

    public var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: AppColors.brandPrimary))
            .frame(width: size, height: size)
    }
}
