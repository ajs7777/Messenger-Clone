//
//  NewMessageViewModel.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 05/01/25.
//

import Foundation
import Combine
import Firebase
import FirebaseAuth

@MainActor
class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init () {
        Task{ try await fetchUsers()}
    }
    
    func fetchUsers() async throws {
        guard let currentUid = Auth.auth().currentUser?.uid else { return }
        let users = try await UserService.fetchallUsers()
        self.users = users.filter { $0.uid != currentUid }
    }
}
