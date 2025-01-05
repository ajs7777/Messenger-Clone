//
//  CircularProfileImageView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 01/01/25.
//

import SwiftUI

enum ProfileImageSizes {
    case xxsmall
    case xsmall
    case small
    case medium
    case large
    case xlarge
    
    var dimension: CGFloat {
        switch self {
        case .xxsmall: return 28
        case .xsmall: return 32
        case .small: return 40
        case .medium: return 60
        case .large: return 64
        case .xlarge: return 80
        }
    }
}

struct CircularProfileImageView: View {
    
    var user: User?
    let size: ProfileImageSizes
    
    var body: some View {
        
        if let imageUrl = user?.profileImageUrl {
            Image(imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundStyle(Color(.systemGray3))
        }
        
        
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_DATA, size: .xlarge)
}
