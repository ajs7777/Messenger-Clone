//
//  AuthService.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 02/01/25.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class AuthService {
    
    @Published var userSession : FirebaseAuth.User?
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
        loadCurrentUserData()
        print("DEBUG: User session \(String(describing: userSession?.uid))")
    }
    
    @MainActor
    func login(withemail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            loadCurrentUserData()
        } catch  {
            print("failed to sign in user \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withemail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await self.uplaodUserData(email: email, id: result.user.uid, fullname: fullname)
            loadCurrentUserData()
        } catch  {
            print("failed to create user \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.userSession = nil
            UserService.shared.currentUser = nil
        } catch  {
            print("failed to sign out user \(error.localizedDescription)")
        }
    }
    
    private func uplaodUserData(email: String, id: String, fullname: String) async throws {
        let user = User(fullName: fullname, email: email, profileImageUrl: nil)
        guard let encodedUser =  try? Firestore.Encoder().encode(user) else { return }
        try await Firestore.firestore().collection("users").document(id).setData(encodedUser)
    }
    
    private func loadCurrentUserData() {
        Task { try await UserService.shared.fetchCurrentUser() }
    }
}
