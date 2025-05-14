//
//  RatingView.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct RatingView: View {
    @Binding var rating: Int
    public var maxRating: Int = 5
    public var filledSymbol: String = "star.fill"
    public var emptySymbol: String = "star"

    public init(rating: Binding<Int>, maxRating: Int = 5) {
        self._rating = rating
        self.maxRating = maxRating
    }

    public var body: some View {
        HStack(spacing: AppSpacing.small) {
            ForEach(1...maxRating, id: \.self) { index in
                Image(systemName: index <= rating ? filledSymbol : emptySymbol)
                    .foregroundColor(index <= rating ? AppColors.brandPrimary : AppColors.grayLight)
                    .onTapGesture {
                        rating = index
                    }
            }
        }
    }
}
