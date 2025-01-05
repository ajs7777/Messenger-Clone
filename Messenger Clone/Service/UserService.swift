//
//  UserService.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 05/01/25.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseAuth

class UserService {
    @Published var currentUser: User? 
    
    static let shared = UserService()
    
     func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUser = user
         print("DEBUG: Current user in service is \(String(describing: currentUser))")
    }
}
