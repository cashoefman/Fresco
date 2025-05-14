//
//  FrescoDivider.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct FrescoDivider: View {
    public var color: Color
    public var height: CGFloat

    public init(color: Color = AppColors.grayLight, height: CGFloat = 1) {
        self.color = color
        self.height = height
    }

    public var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: height)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

