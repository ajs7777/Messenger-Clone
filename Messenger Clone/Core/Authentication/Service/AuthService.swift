//
//  AuthService.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    func login(withemail email: String, password: String) async throws {
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
    }
    
    func createUser(withemail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch  {
            print("failed to create user \(error.localizedDescription)")
        }
    }
}
