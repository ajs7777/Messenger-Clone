//
//  ChatMessageCell.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import SwiftUI

struct ChatMessageCell: View {
    
    let isFromCurrentUser: Bool
    
    var body: some View {
        HStack{
            if isFromCurrentUser {
                Spacer()
                Text("This is a text message, for testing the messege if longer enough.")
                    .font(.subheadline)
                    .padding(13)
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
            } else {
                Text("This is a text message")
                    .font(.subheadline)
                    .padding(13)
                    .background(Color(.systemGray5))
                    .foregroundStyle(.black)
                    .clipShape(ChatBubble(isFromCurrentUser: isFromCurrentUser))
                    .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .leading)
                Spacer()
            }
        } .padding(.horizontal)
    }
}

#Preview {
    ChatMessageCell(isFromCurrentUser: false)
}
