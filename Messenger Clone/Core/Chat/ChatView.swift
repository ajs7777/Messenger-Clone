//
//  ChatView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import SwiftUI

struct ChatView: View {
    
    @State var messageText = ""
    
    var body: some View {
        VStack{
            ScrollView {
                CircularProfileImageView(user: User.MOCK_DATA, size: .xlarge)
                
                VStack {
                    Text(User.MOCK_DATA.fullName)
                        .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundColor(.gray)
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
    ChatView()
}
