//
//  PullToRefreshIndicator.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct PullToRefreshIndicator: View {
    public var progress: CGFloat

    public init(progress: CGFloat) {
        self.progress = progress
    }

    public var body: some View {
        Circle()
            .trim(from: 0, to: min(progress, 1))
            .stroke(AppColors.brandPrimary, lineWidth: 2)
            .frame(width: 24, height: 24)
            .rotationEffect(.degrees(Double(progress) * 360))
            .animation(.linear, value: progress)
    }
}
