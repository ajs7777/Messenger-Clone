//
//  ActiveNowView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct ActiveNowView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 30.0) {
                ForEach(0..<10) { user in
                    VStack{
                        ZStack(alignment: .bottomTrailing) {
                            CircularProfileImageView(user: User.MOCK_DATA, size: .large)
                            
                            ZStack {
                                Circle().fill(.white)
                                    .frame(width: 18, height: 18)
                                Circle().fill(.green)
                                    .frame(width: 12, height: 12)
                            }
                            .padding(2)
                        }
                        
                        Text("Bruce")
                            .font(.body)
                            .foregroundStyle(Color(.systemGray))
                    }
                }
            } .padding()
            
            
        }
        .frame(height: 120)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ActiveNowView()
}
