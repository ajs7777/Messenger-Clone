//
//  NewMessageView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) var dismiss
    @State private var searchText = ""
    @StateObject var vm = NewMessageViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack {
                    TextField("To:", text: $searchText)
                        .padding(.leading)
                        .frame(maxWidth: .infinity)
                        .frame(height: 40)
                        .background(Color(.systemGray6))
                    
                    Text("CONTACTS")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    ForEach(vm.users) { user in
                        VStack(spacing: 15.0) {
                            HStack {
                                CircularProfileImageView(user: user, size: .xsmall)
                                Text(user.fullName)
                                    .fontWeight(.semibold)
                            } .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading)
                            Divider()
                                .padding(.leading, 40)
                        }
                    }
                        
                }
            }
            .navigationTitle("New Message")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Text("Cancel")
                            .foregroundStyle(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    NewMessageView()
}
