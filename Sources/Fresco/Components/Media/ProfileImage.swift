//
//  ProfileImage.swift
//  Fresco
//
//  Created by Cas Hoefman on 5/17/25.
//
import SwiftUI
// import Fresco

public struct ProfileImageView: View {
    @EnvironmentObject var themer: Themer
    public let imageUrl: URL?
    public let size: CGFloat

    public init(imageUrl: URL?, size: CGFloat = 50) {
        self.imageUrl = imageUrl
        self.size = size
    }

    public var body: some View {
        let profileStyle = themer.themeShapes.profileImage
        let shape = profileStyle.shape == "circle"
            ? AnyShape(Circle())
            : AnyShape(RoundedRectangle(cornerRadius: 8))

        AsyncImage(url: imageUrl) { phase in
            switch phase {
            case .success(let image):
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: size, height: size)
                    .clipShape(shape)
                    .overlay(
                        shape.stroke(themer.theme.outlineVariant, lineWidth: profileStyle.borderWidth)
                    )
                    .shadow(
                        color: .black.opacity(profileStyle.shadowOpacity),
                        radius: profileStyle.shadowRadius
                    )

            case .failure(_):
                shape
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
    ProfileImageView(imageUrl: URL(string: "https://cashoefman.com/wp-content/uploads/2022/08/cropped-1516249141534.jpg"), size: 100)
        .environmentObject(Themer())
}

