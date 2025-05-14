//
//  RoundedImage.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct RoundedImage: View {
    public let image: Image
    public let cornerRadius: CGFloat

    public init(_ image: Image, cornerRadius: CGFloat = 12) {
        self.image = image
        self.cornerRadius = cornerRadius
    }

    public var body: some View {
        image
            .resizable()
            .scaledToFill()
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
    }
}
