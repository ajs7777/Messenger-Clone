//
//  LoginView.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 31/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
                Spacer()
                Image("Mesenger-logo")
                    .resizable()
                    .frame(width: 180, height: 180)
                    .padding()
                VStack(spacing: 8.0) {
                    TextField("Enter your email", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal, 24)
                }
                
                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .bold()
                        .font(.footnote)
                } .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                
                Button {
                    
                } label: {
                    Text("Login")
                        .foregroundStyle(Color(.white))
                        .frame(width: 360, height: 40)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }

                
                HStack {
                    Rectangle()
                        .fill(Color(.systemGray))
                        .frame( width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .foregroundStyle(Color(.systemGray))
                    Rectangle()
                        .fill(Color(.systemGray))
                        .frame( width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                
                HStack {
                    Image("facebook-logo")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Continue with Facebook")
                        .font(.subheadline)
                        .foregroundStyle(.blue)
                        .fontWeight(.semibold)
                }
                Spacer()
                
                Divider()
                NavigationLink {
                    Text("Sign in page")
                } label: {
                    HStack {
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
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
}

#Preview {
    LoginView()
}
