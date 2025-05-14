//
//  AspectRatioImage.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct AspectRatioImage: View {
    public let image: Image
    public let aspectRatio: CGFloat
    public let cornerRadius: CGFloat

    public init(_ image: Image, aspectRatio: CGFloat = 16/9, cornerRadius: CGFloat = 12) {
        self.image = image
        self.aspectRatio = aspectRatio
        self.cornerRadius = cornerRadius
    }

    public var body: some View {
        image
            .resizable()
            .aspectRatio(aspectRatio, contentMode: .fill)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
