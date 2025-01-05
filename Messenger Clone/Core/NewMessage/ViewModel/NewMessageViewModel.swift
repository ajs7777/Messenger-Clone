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

class NewMessageViewModel: ObservableObject {
    @Published var users = [User]()
    
    init () {
        Task{ try await fetchUsers()}
    }
    
    func fetchUsers() async throws {
        self.users = try await UserService.fetchallUsers()
    }
}
