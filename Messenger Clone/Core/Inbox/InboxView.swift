//
//  InboxView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct InboxView: View {
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
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Chats")
                            .font(.largeTitle)
                            .bold()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "square.and.pencil.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.black, .gray.opacity(0.4))
                }
            }
        }
    }
}

#Preview {
    InboxView()
}
