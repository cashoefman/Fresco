//
//  CustomSlider.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct CustomSlider: View {
    @Binding var value: Double
    public var range: ClosedRange<Double>
    public var step: Double

    public init(value: Binding<Double>, range: ClosedRange<Double> = 0...100, step: Double = 1) {
        self._value = value
        self.range = range
        self.step = step
    }

    public var body: some View {
        Slider(value: $value, in: range, step: step)
            .accentColor(AppColors.brandPrimary)
    }
}
