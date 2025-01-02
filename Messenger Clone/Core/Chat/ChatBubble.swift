//
//  ChatBubble.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import SwiftUI

struct ChatBubble: Shape {
    
    let isFromCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [
            .topLeft,
            .topRight,
            isFromCurrentUser ? .bottomLeft : .bottomRight
        ], cornerRadii: CGSize(width: 20, height: 20))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isFromCurrentUser: true)
}
