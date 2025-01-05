//
//  InboxViewModel.swift
//  Messenger Clone
//
//  Created by Abhijit Saha on 05/01/25.
//

import Foundation
import Combine
import Firebase

class InboxViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setUpSubscribes()
    }
    
    private func setUpSubscribes() {
        UserService.shared.$currentUser.sink { [weak self] user in
            self?.currentUser = user
            
        } .store(in: &cancellables)
    }
}
