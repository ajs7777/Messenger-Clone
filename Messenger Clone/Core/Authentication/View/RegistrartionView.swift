//
//  RegistrartionView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct RegistrartionView: View {
    
    @StateObject var vm = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Image("Mesenger-logo")
                .resizable()
                .frame(width: 180, height: 180)
                .padding()
            VStack(spacing: 8.0) {
                TextField("Enter your email", text: $vm.email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                TextField("Enter your fullname", text: $vm.fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
                
                SecureField("Enter your password", text: $vm.password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }
                        
            Button {
                Task{try await vm.createUser()}
            } label: {
                Text("Login")
                    .foregroundStyle(Color(.white))
                    .frame(width: 360, height: 40)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            Spacer()
            Divider()
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    
                    Text("Sign In")
                        .bold()
                }
                .font(.subheadline)
                .foregroundStyle(.blue)
                .padding(.bottom, 20)
                .padding(.top, 1)
            }
        }
    }
}

#Preview {
    RegistrartionView()
}
