//
//  LoginViewModel.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
       try await AuthService().login(withemail: email, password: password)
    }
}
