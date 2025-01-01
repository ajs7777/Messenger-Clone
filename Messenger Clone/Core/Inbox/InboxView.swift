//
//  InboxView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct InboxView: View {
    
    @State private var showNewMessageView = false
    @State private var user = User.MOCK_DATA
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ActiveNowView()
                List {
                    ForEach(0..<10) { chat in
                        InboxRowView()
                    }
                    
                }
                .listStyle(PlainListStyle())
                .frame(height: UIScreen.main.bounds.height - 120)
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .fullScreenCover(isPresented: $showNewMessageView, content: {
                NewMessageView()
            })
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack{
                        NavigationLink(value: user) {
                            CircularProfileImageView(user: user, size: .xsmall)
                        }
                                       
                        Text("Chats")
                            .font(.largeTitle)
                            .bold()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showNewMessageView.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.black, .gray.opacity(0.4))
                    }

                }
            }
        }
    }
}

#Preview {
    InboxView()
}
