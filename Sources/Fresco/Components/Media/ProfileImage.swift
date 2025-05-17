//
//  ProfileImage.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//

import SwiftUI
import Fresco

public struct ProfileImageView: View {
    @EnvironmentObject var themer: Themer
    public let imageUrl: URL?
    public let size: CGFloat

    public init(imageUrl: URL?, size: CGFloat = 50) {
        self.imageUrl = imageUrl
        self.size = size
    }

    public var body: some View {
        AsyncImage(url: imageUrl) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(themer.theme.outlineVariant, lineWidth: 1)
                    )
                    .shadow(radius: 2)
            case .failure(_):
                Circle()
                    .fill(themer.theme.secondaryContainer)
                    .frame(width: size, height: size)
            case .empty:
                ProgressView()
                    .frame(width: size, height: size)
            @unknown default:
                EmptyView()
                    .frame(width: size, height: size)
            }
        }
    }
}

#Preview {
    ProfileImageView(imageUrl: URL(string: "https://example.com/profile.jpg"), size: 100)
        .environmentObject(Themer())
}
