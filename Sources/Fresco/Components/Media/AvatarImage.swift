//
//  AvatarImage.swift
//  Fresco Design System
//
//  Created by Cas Hoefman on 5/13/25.
//

import SwiftUI

public struct AvatarImage: View {
    public let image: Image
    public let size: CGFloat

    public init(_ image: Image, size: CGFloat = 48) {
        self.image = image
        self.size = size
    }

    public var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(Circle())
    }
}
