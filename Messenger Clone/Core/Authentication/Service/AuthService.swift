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
    
    @Published var userSession : FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session \(userSession?.uid)")
    }
    
    func login(withemail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } catch  {
            print("failed to sign in user \(error.localizedDescription)")
        }
    }
    
    func createUser(withemail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch  {
            print("failed to create user \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.userSession = nil
        } catch  {
            print("failed to sign out user \(error.localizedDescription)")
        }
    }
}
