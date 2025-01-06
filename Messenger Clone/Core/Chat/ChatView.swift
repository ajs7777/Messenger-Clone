//
//  ChatView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText = ""
    let user : User
    
    var body: some View {
        VStack{
            ScrollView {
                CircularProfileImageView(user: user, size: .xlarge)
                VStack {
                    Text(user.fullName)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                
                Button {
                    print("send message")
                } label: {
                    Text("Send")
                } .padding()

            } .padding(.horizontal)
        }
    }
}

#Preview {
    ChatView( user: User.MOCK_DATA)
}
