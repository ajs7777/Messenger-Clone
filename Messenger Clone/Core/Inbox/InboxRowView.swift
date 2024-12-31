//
//  InboxRowView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15.0){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 65, height: 65)
                .foregroundStyle(Color(.systemGray4))
            VStack(alignment: .leading){
                Text("Abhijit Saha")
                    .font(.headline)
                Text("Some text message for now that spans more than one line")
                    .font(.subheadline)
                    .foregroundColor(Color(.systemGray))
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack{
                Text("Yesterday")
               Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundColor(Color(.systemGray))
            
        }
    }
}

#Preview {
    InboxRowView()
}
